.class abstract Ljava/util/concurrent/LinkedBlockingDeque$AbstractItr;
.super Ljava/lang/Object;
.source "LinkedBlockingDeque.java"

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/util/concurrent/LinkedBlockingDeque;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x402
    name = "AbstractItr"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Iterator",
        "<TE;>;"
    }
.end annotation


# instance fields
.field private lastRet:Ljava/util/concurrent/LinkedBlockingDeque$Node;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/LinkedBlockingDeque$Node",
            "<TE;>;"
        }
    .end annotation
.end field

.field next:Ljava/util/concurrent/LinkedBlockingDeque$Node;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/LinkedBlockingDeque$Node",
            "<TE;>;"
        }
    .end annotation
.end field

.field nextItem:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TE;"
        }
    .end annotation
.end field

.field final synthetic this$0:Ljava/util/concurrent/LinkedBlockingDeque;


# direct methods
.method constructor <init>(Ljava/util/concurrent/LinkedBlockingDeque;)V
    .locals 2

    .prologue
    .line 1037
    .local p0, "this":Ljava/util/concurrent/LinkedBlockingDeque$AbstractItr;, "Ljava/util/concurrent/LinkedBlockingDeque<TE;>.AbstractItr;"
    iput-object p1, p0, Ljava/util/concurrent/LinkedBlockingDeque$AbstractItr;->this$0:Ljava/util/concurrent/LinkedBlockingDeque;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1039
    iget-object v0, p1, Ljava/util/concurrent/LinkedBlockingDeque;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 1040
    .local v0, "lock":Ljava/util/concurrent/locks/ReentrantLock;
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 1042
    :try_start_0
    invoke-virtual {p0}, Ljava/util/concurrent/LinkedBlockingDeque$AbstractItr;->firstNode()Ljava/util/concurrent/LinkedBlockingDeque$Node;

    move-result-object v1

    iput-object v1, p0, Ljava/util/concurrent/LinkedBlockingDeque$AbstractItr;->next:Ljava/util/concurrent/LinkedBlockingDeque$Node;

    .line 1043
    iget-object v1, p0, Ljava/util/concurrent/LinkedBlockingDeque$AbstractItr;->next:Ljava/util/concurrent/LinkedBlockingDeque$Node;

    if-nez v1, :cond_0

    const/4 v1, 0x0

    :goto_0
    iput-object v1, p0, Ljava/util/concurrent/LinkedBlockingDeque$AbstractItr;->nextItem:Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1045
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 1047
    return-void

    .line 1043
    :cond_0
    :try_start_1
    iget-object v1, p0, Ljava/util/concurrent/LinkedBlockingDeque$AbstractItr;->next:Ljava/util/concurrent/LinkedBlockingDeque$Node;

    iget-object v1, v1, Ljava/util/concurrent/LinkedBlockingDeque$Node;->item:Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 1045
    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v1
.end method

.method private succ(Ljava/util/concurrent/LinkedBlockingDeque$Node;)Ljava/util/concurrent/LinkedBlockingDeque$Node;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/LinkedBlockingDeque$Node",
            "<TE;>;)",
            "Ljava/util/concurrent/LinkedBlockingDeque$Node",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 1057
    .local p0, "this":Ljava/util/concurrent/LinkedBlockingDeque$AbstractItr;, "Ljava/util/concurrent/LinkedBlockingDeque<TE;>.AbstractItr;"
    .local p1, "n":Ljava/util/concurrent/LinkedBlockingDeque$Node;, "Ljava/util/concurrent/LinkedBlockingDeque$Node<TE;>;"
    :goto_0
    invoke-virtual {p0, p1}, Ljava/util/concurrent/LinkedBlockingDeque$AbstractItr;->nextNode(Ljava/util/concurrent/LinkedBlockingDeque$Node;)Ljava/util/concurrent/LinkedBlockingDeque$Node;

    move-result-object v0

    .line 1058
    .local v0, "s":Ljava/util/concurrent/LinkedBlockingDeque$Node;, "Ljava/util/concurrent/LinkedBlockingDeque$Node<TE;>;"
    if-nez v0, :cond_1

    .line 1059
    const/4 v0, 0x0

    .line 1063
    .end local v0    # "s":Ljava/util/concurrent/LinkedBlockingDeque$Node;, "Ljava/util/concurrent/LinkedBlockingDeque$Node<TE;>;"
    :cond_0
    :goto_1
    return-object v0

    .line 1060
    .restart local v0    # "s":Ljava/util/concurrent/LinkedBlockingDeque$Node;, "Ljava/util/concurrent/LinkedBlockingDeque$Node<TE;>;"
    :cond_1
    iget-object v1, v0, Ljava/util/concurrent/LinkedBlockingDeque$Node;->item:Ljava/lang/Object;

    if-nez v1, :cond_0

    .line 1062
    if-ne v0, p1, :cond_2

    .line 1063
    invoke-virtual {p0}, Ljava/util/concurrent/LinkedBlockingDeque$AbstractItr;->firstNode()Ljava/util/concurrent/LinkedBlockingDeque$Node;

    move-result-object v0

    goto :goto_1

    .line 1065
    :cond_2
    move-object p1, v0

    .line 1066
    goto :goto_0
.end method


# virtual methods
.method advance()V
    .locals 2

    .prologue
    .line 1073
    .local p0, "this":Ljava/util/concurrent/LinkedBlockingDeque$AbstractItr;, "Ljava/util/concurrent/LinkedBlockingDeque<TE;>.AbstractItr;"
    iget-object v1, p0, Ljava/util/concurrent/LinkedBlockingDeque$AbstractItr;->this$0:Ljava/util/concurrent/LinkedBlockingDeque;

    iget-object v0, v1, Ljava/util/concurrent/LinkedBlockingDeque;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 1074
    .local v0, "lock":Ljava/util/concurrent/locks/ReentrantLock;
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 1077
    :try_start_0
    iget-object v1, p0, Ljava/util/concurrent/LinkedBlockingDeque$AbstractItr;->next:Ljava/util/concurrent/LinkedBlockingDeque$Node;

    invoke-direct {p0, v1}, Ljava/util/concurrent/LinkedBlockingDeque$AbstractItr;->succ(Ljava/util/concurrent/LinkedBlockingDeque$Node;)Ljava/util/concurrent/LinkedBlockingDeque$Node;

    move-result-object v1

    iput-object v1, p0, Ljava/util/concurrent/LinkedBlockingDeque$AbstractItr;->next:Ljava/util/concurrent/LinkedBlockingDeque$Node;

    .line 1078
    iget-object v1, p0, Ljava/util/concurrent/LinkedBlockingDeque$AbstractItr;->next:Ljava/util/concurrent/LinkedBlockingDeque$Node;

    if-nez v1, :cond_0

    const/4 v1, 0x0

    :goto_0
    iput-object v1, p0, Ljava/util/concurrent/LinkedBlockingDeque$AbstractItr;->nextItem:Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1080
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 1082
    return-void

    .line 1078
    :cond_0
    :try_start_1
    iget-object v1, p0, Ljava/util/concurrent/LinkedBlockingDeque$AbstractItr;->next:Ljava/util/concurrent/LinkedBlockingDeque$Node;

    iget-object v1, v1, Ljava/util/concurrent/LinkedBlockingDeque$Node;->item:Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 1080
    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v1
.end method

.method abstract firstNode()Ljava/util/concurrent/LinkedBlockingDeque$Node;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/concurrent/LinkedBlockingDeque$Node",
            "<TE;>;"
        }
    .end annotation
.end method

.method public hasNext()Z
    .locals 1

    .prologue
    .line 1085
    .local p0, "this":Ljava/util/concurrent/LinkedBlockingDeque$AbstractItr;, "Ljava/util/concurrent/LinkedBlockingDeque<TE;>.AbstractItr;"
    iget-object v0, p0, Ljava/util/concurrent/LinkedBlockingDeque$AbstractItr;->next:Ljava/util/concurrent/LinkedBlockingDeque$Node;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public next()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    .prologue
    .line 1089
    .local p0, "this":Ljava/util/concurrent/LinkedBlockingDeque$AbstractItr;, "Ljava/util/concurrent/LinkedBlockingDeque<TE;>.AbstractItr;"
    iget-object v1, p0, Ljava/util/concurrent/LinkedBlockingDeque$AbstractItr;->next:Ljava/util/concurrent/LinkedBlockingDeque$Node;

    if-nez v1, :cond_0

    .line 1090
    new-instance v1, Ljava/util/NoSuchElementException;

    invoke-direct {v1}, Ljava/util/NoSuchElementException;-><init>()V

    throw v1

    .line 1091
    :cond_0
    iget-object v1, p0, Ljava/util/concurrent/LinkedBlockingDeque$AbstractItr;->next:Ljava/util/concurrent/LinkedBlockingDeque$Node;

    iput-object v1, p0, Ljava/util/concurrent/LinkedBlockingDeque$AbstractItr;->lastRet:Ljava/util/concurrent/LinkedBlockingDeque$Node;

    .line 1092
    iget-object v0, p0, Ljava/util/concurrent/LinkedBlockingDeque$AbstractItr;->nextItem:Ljava/lang/Object;

    .line 1093
    .local v0, "x":Ljava/lang/Object;, "TE;"
    invoke-virtual {p0}, Ljava/util/concurrent/LinkedBlockingDeque$AbstractItr;->advance()V

    .line 1094
    return-object v0
.end method

.method abstract nextNode(Ljava/util/concurrent/LinkedBlockingDeque$Node;)Ljava/util/concurrent/LinkedBlockingDeque$Node;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/LinkedBlockingDeque$Node",
            "<TE;>;)",
            "Ljava/util/concurrent/LinkedBlockingDeque$Node",
            "<TE;>;"
        }
    .end annotation
.end method

.method public remove()V
    .locals 3

    .prologue
    .line 1098
    .local p0, "this":Ljava/util/concurrent/LinkedBlockingDeque$AbstractItr;, "Ljava/util/concurrent/LinkedBlockingDeque<TE;>.AbstractItr;"
    iget-object v1, p0, Ljava/util/concurrent/LinkedBlockingDeque$AbstractItr;->lastRet:Ljava/util/concurrent/LinkedBlockingDeque$Node;

    .line 1099
    .local v1, "n":Ljava/util/concurrent/LinkedBlockingDeque$Node;, "Ljava/util/concurrent/LinkedBlockingDeque$Node<TE;>;"
    if-nez v1, :cond_0

    .line 1100
    new-instance v2, Ljava/lang/IllegalStateException;

    invoke-direct {v2}, Ljava/lang/IllegalStateException;-><init>()V

    throw v2

    .line 1101
    :cond_0
    const/4 v2, 0x0

    iput-object v2, p0, Ljava/util/concurrent/LinkedBlockingDeque$AbstractItr;->lastRet:Ljava/util/concurrent/LinkedBlockingDeque$Node;

    .line 1102
    iget-object v2, p0, Ljava/util/concurrent/LinkedBlockingDeque$AbstractItr;->this$0:Ljava/util/concurrent/LinkedBlockingDeque;

    iget-object v0, v2, Ljava/util/concurrent/LinkedBlockingDeque;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 1103
    .local v0, "lock":Ljava/util/concurrent/locks/ReentrantLock;
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 1105
    :try_start_0
    iget-object v2, v1, Ljava/util/concurrent/LinkedBlockingDeque$Node;->item:Ljava/lang/Object;

    if-eqz v2, :cond_1

    .line 1106
    iget-object v2, p0, Ljava/util/concurrent/LinkedBlockingDeque$AbstractItr;->this$0:Ljava/util/concurrent/LinkedBlockingDeque;

    invoke-virtual {v2, v1}, Ljava/util/concurrent/LinkedBlockingDeque;->unlink(Ljava/util/concurrent/LinkedBlockingDeque$Node;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1108
    :cond_1
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 1110
    return-void

    .line 1108
    :catchall_0
    move-exception v2

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v2
.end method
