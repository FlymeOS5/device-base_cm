.class Ljava/lang/Daemons$FinalizerDaemon;
.super Ljava/lang/Daemons$Daemon;
.source "Daemons.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/lang/Daemons;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "FinalizerDaemon"
.end annotation


# static fields
.field private static final INSTANCE:Ljava/lang/Daemons$FinalizerDaemon;


# instance fields
.field private volatile finalizingObject:Ljava/lang/Object;

.field private volatile finalizingStartedNanos:J

.field private final queue:Ljava/lang/ref/ReferenceQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/ReferenceQueue",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 165
    new-instance v0, Ljava/lang/Daemons$FinalizerDaemon;

    invoke-direct {v0}, Ljava/lang/Daemons$FinalizerDaemon;-><init>()V

    sput-object v0, Ljava/lang/Daemons$FinalizerDaemon;->INSTANCE:Ljava/lang/Daemons$FinalizerDaemon;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .prologue
    .line 164
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Ljava/lang/Daemons$Daemon;-><init>(Ljava/lang/Daemons$1;)V

    .line 166
    sget-object v0, Ljava/lang/ref/FinalizerReference;->queue:Ljava/lang/ref/ReferenceQueue;

    iput-object v0, p0, Ljava/lang/Daemons$FinalizerDaemon;->queue:Ljava/lang/ref/ReferenceQueue;

    return-void
.end method

.method static synthetic access$100()Ljava/lang/Daemons$FinalizerDaemon;
    .locals 1

    .prologue
    .line 164
    sget-object v0, Ljava/lang/Daemons$FinalizerDaemon;->INSTANCE:Ljava/lang/Daemons$FinalizerDaemon;

    return-object v0
.end method

.method static synthetic access$600(Ljava/lang/Daemons$FinalizerDaemon;)Ljava/lang/Object;
    .locals 1
    .param p0, "x0"    # Ljava/lang/Daemons$FinalizerDaemon;

    .prologue
    .line 164
    iget-object v0, p0, Ljava/lang/Daemons$FinalizerDaemon;->finalizingObject:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$700(Ljava/lang/Daemons$FinalizerDaemon;)J
    .locals 2
    .param p0, "x0"    # Ljava/lang/Daemons$FinalizerDaemon;

    .prologue
    .line 164
    iget-wide v0, p0, Ljava/lang/Daemons$FinalizerDaemon;->finalizingStartedNanos:J

    return-wide v0
.end method

.method private doFinalize(Ljava/lang/ref/FinalizerReference;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/ref/FinalizerReference",
            "<*>;)V"
        }
    .end annotation

    .annotation build Ljava/lang/FindBugsSuppressWarnings;
        value = {
            "FI_EXPLICIT_INVOCATION"
        }
    .end annotation

    .prologue
    .local p1, "reference":Ljava/lang/ref/FinalizerReference;, "Ljava/lang/ref/FinalizerReference<*>;"
    const/4 v4, 0x0

    .line 182
    invoke-static {p1}, Ljava/lang/ref/FinalizerReference;->remove(Ljava/lang/ref/FinalizerReference;)V

    .line 183
    invoke-virtual {p1}, Ljava/lang/ref/FinalizerReference;->get()Ljava/lang/Object;

    move-result-object v1

    .line 184
    .local v1, "object":Ljava/lang/Object;
    invoke-virtual {p1}, Ljava/lang/ref/FinalizerReference;->clear()V

    .line 186
    :try_start_0
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v2

    iput-wide v2, p0, Ljava/lang/Daemons$FinalizerDaemon;->finalizingStartedNanos:J

    .line 187
    iput-object v1, p0, Ljava/lang/Daemons$FinalizerDaemon;->finalizingObject:Ljava/lang/Object;

    .line 188
    # getter for: Ljava/lang/Daemons$FinalizerWatchdogDaemon;->INSTANCE:Ljava/lang/Daemons$FinalizerWatchdogDaemon;
    invoke-static {}, Ljava/lang/Daemons$FinalizerWatchdogDaemon;->access$200()Ljava/lang/Daemons$FinalizerWatchdogDaemon;

    move-result-object v3

    monitor-enter v3
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 189
    :try_start_1
    # getter for: Ljava/lang/Daemons$FinalizerWatchdogDaemon;->INSTANCE:Ljava/lang/Daemons$FinalizerWatchdogDaemon;
    invoke-static {}, Ljava/lang/Daemons$FinalizerWatchdogDaemon;->access$200()Ljava/lang/Daemons$FinalizerWatchdogDaemon;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->notify()V

    .line 190
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 191
    :try_start_2
    invoke-virtual {v1}, Ljava/lang/Object;->finalize()V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 197
    iput-object v4, p0, Ljava/lang/Daemons$FinalizerDaemon;->finalizingObject:Ljava/lang/Object;

    .line 199
    :goto_0
    return-void

    .line 190
    :catchall_0
    move-exception v2

    :try_start_3
    monitor-exit v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw v2
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 192
    :catch_0
    move-exception v0

    .line 194
    .local v0, "ex":Ljava/lang/Throwable;
    :try_start_5
    const-string v2, "Uncaught exception thrown by finalizer"

    invoke-static {v2, v0}, Ljava/lang/System;->logE(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 197
    iput-object v4, p0, Ljava/lang/Daemons$FinalizerDaemon;->finalizingObject:Ljava/lang/Object;

    goto :goto_0

    .end local v0    # "ex":Ljava/lang/Throwable;
    :catchall_1
    move-exception v2

    iput-object v4, p0, Ljava/lang/Daemons$FinalizerDaemon;->finalizingObject:Ljava/lang/Object;

    throw v2
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 171
    :goto_0
    invoke-virtual {p0}, Ljava/lang/Daemons$FinalizerDaemon;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 174
    :try_start_0
    iget-object v0, p0, Ljava/lang/Daemons$FinalizerDaemon;->queue:Ljava/lang/ref/ReferenceQueue;

    invoke-virtual {v0}, Ljava/lang/ref/ReferenceQueue;->remove()Ljava/lang/ref/Reference;

    move-result-object v0

    check-cast v0, Ljava/lang/ref/FinalizerReference;

    invoke-direct {p0, v0}, Ljava/lang/Daemons$FinalizerDaemon;->doFinalize(Ljava/lang/ref/FinalizerReference;)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 175
    :catch_0
    move-exception v0

    goto :goto_0

    .line 178
    :cond_0
    return-void
.end method
