.class Ljava/lang/ProcessManager$ProcessInputStream;
.super Ljava/io/FileInputStream;
.source "ProcessManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/lang/ProcessManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ProcessInputStream"
.end annotation


# instance fields
.field private fd:Ljava/io/FileDescriptor;


# direct methods
.method private constructor <init>(Ljava/io/FileDescriptor;)V
    .locals 0
    .param p1, "fd"    # Ljava/io/FileDescriptor;

    .prologue
    .line 348
    invoke-direct {p0, p1}, Ljava/io/FileInputStream;-><init>(Ljava/io/FileDescriptor;)V

    .line 349
    iput-object p1, p0, Ljava/lang/ProcessManager$ProcessInputStream;->fd:Ljava/io/FileDescriptor;

    .line 350
    return-void
.end method

.method synthetic constructor <init>(Ljava/io/FileDescriptor;Ljava/lang/ProcessManager$1;)V
    .locals 0
    .param p1, "x0"    # Ljava/io/FileDescriptor;
    .param p2, "x1"    # Ljava/lang/ProcessManager$1;

    .prologue
    .line 343
    invoke-direct {p0, p1}, Ljava/lang/ProcessManager$ProcessInputStream;-><init>(Ljava/io/FileDescriptor;)V

    return-void
.end method


# virtual methods
.method public close()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 355
    :try_start_0
    invoke-super {p0}, Ljava/io/FileInputStream;->close()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 357
    monitor-enter p0

    .line 359
    :try_start_1
    iget-object v0, p0, Ljava/lang/ProcessManager$ProcessInputStream;->fd:Ljava/io/FileDescriptor;

    invoke-static {v0}, Llibcore/io/IoUtils;->close(Ljava/io/FileDescriptor;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 361
    const/4 v0, 0x0

    :try_start_2
    iput-object v0, p0, Ljava/lang/ProcessManager$ProcessInputStream;->fd:Ljava/io/FileDescriptor;

    .line 363
    monitor-exit p0

    .line 365
    return-void

    .line 361
    :catchall_0
    move-exception v0

    const/4 v1, 0x0

    iput-object v1, p0, Ljava/lang/ProcessManager$ProcessInputStream;->fd:Ljava/io/FileDescriptor;

    throw v0

    .line 363
    :catchall_1
    move-exception v0

    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v0

    .line 357
    :catchall_2
    move-exception v0

    monitor-enter p0

    .line 359
    :try_start_3
    iget-object v1, p0, Ljava/lang/ProcessManager$ProcessInputStream;->fd:Ljava/io/FileDescriptor;

    invoke-static {v1}, Llibcore/io/IoUtils;->close(Ljava/io/FileDescriptor;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    .line 361
    const/4 v1, 0x0

    :try_start_4
    iput-object v1, p0, Ljava/lang/ProcessManager$ProcessInputStream;->fd:Ljava/io/FileDescriptor;

    .line 363
    monitor-exit p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_4

    throw v0

    .line 361
    :catchall_3
    move-exception v0

    const/4 v1, 0x0

    :try_start_5
    iput-object v1, p0, Ljava/lang/ProcessManager$ProcessInputStream;->fd:Ljava/io/FileDescriptor;

    throw v0

    .line 363
    :catchall_4
    move-exception v0

    monitor-exit p0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_4

    throw v0
.end method
