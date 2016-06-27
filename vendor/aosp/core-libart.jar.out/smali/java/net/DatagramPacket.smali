.class public final Ljava/net/DatagramPacket;
.super Ljava/lang/Object;
.source "DatagramPacket.java"


# instance fields
.field private address:Ljava/net/InetAddress;

.field private data:[B

.field private length:I

.field private offset:I

.field private port:I

.field private userSuppliedLength:I


# direct methods
.method public constructor <init>([BI)V
    .locals 1
    .param p1, "data"    # [B
    .param p2, "length"    # I

    .prologue
    .line 60
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, p2}, Ljava/net/DatagramPacket;-><init>([BII)V

    .line 61
    return-void
.end method

.method public constructor <init>([BII)V
    .locals 1
    .param p1, "data"    # [B
    .param p2, "offset"    # I
    .param p3, "length"    # I

    .prologue
    .line 74
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    const/4 v0, -0x1

    iput v0, p0, Ljava/net/DatagramPacket;->port:I

    .line 48
    const/4 v0, 0x0

    iput v0, p0, Ljava/net/DatagramPacket;->offset:I

    .line 75
    invoke-virtual {p0, p1, p2, p3}, Ljava/net/DatagramPacket;->setData([BII)V

    .line 76
    return-void
.end method

.method public constructor <init>([BIILjava/net/InetAddress;I)V
    .locals 0
    .param p1, "data"    # [B
    .param p2, "offset"    # I
    .param p3, "length"    # I
    .param p4, "host"    # Ljava/net/InetAddress;
    .param p5, "aPort"    # I

    .prologue
    .line 96
    invoke-direct {p0, p1, p2, p3}, Ljava/net/DatagramPacket;-><init>([BII)V

    .line 97
    invoke-virtual {p0, p5}, Ljava/net/DatagramPacket;->setPort(I)V

    .line 98
    iput-object p4, p0, Ljava/net/DatagramPacket;->address:Ljava/net/InetAddress;

    .line 99
    return-void
.end method

.method public constructor <init>([BIILjava/net/SocketAddress;)V
    .locals 0
    .param p1, "data"    # [B
    .param p2, "offset"    # I
    .param p3, "length"    # I
    .param p4, "sockAddr"    # Ljava/net/SocketAddress;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation

    .prologue
    .line 288
    invoke-direct {p0, p1, p2, p3}, Ljava/net/DatagramPacket;-><init>([BII)V

    .line 289
    invoke-virtual {p0, p4}, Ljava/net/DatagramPacket;->setSocketAddress(Ljava/net/SocketAddress;)V

    .line 290
    return-void
.end method

.method public constructor <init>([BILjava/net/InetAddress;I)V
    .locals 6
    .param p1, "data"    # [B
    .param p2, "length"    # I
    .param p3, "host"    # Ljava/net/InetAddress;
    .param p4, "port"    # I

    .prologue
    .line 117
    const/4 v2, 0x0

    move-object v0, p0

    move-object v1, p1

    move v3, p2

    move-object v4, p3

    move v5, p4

    invoke-direct/range {v0 .. v5}, Ljava/net/DatagramPacket;-><init>([BIILjava/net/InetAddress;I)V

    .line 118
    return-void
.end method

.method public constructor <init>([BILjava/net/SocketAddress;)V
    .locals 1
    .param p1, "data"    # [B
    .param p2, "length"    # I
    .param p3, "sockAddr"    # Ljava/net/SocketAddress;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation

    .prologue
    .line 265
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, p2}, Ljava/net/DatagramPacket;-><init>([BII)V

    .line 266
    invoke-virtual {p0, p3}, Ljava/net/DatagramPacket;->setSocketAddress(Ljava/net/SocketAddress;)V

    .line 267
    return-void
.end method


# virtual methods
.method public declared-synchronized getAddress()Ljava/net/InetAddress;
    .locals 1

    .prologue
    .line 127
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Ljava/net/DatagramPacket;->address:Ljava/net/InetAddress;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getData()[B
    .locals 1

    .prologue
    .line 136
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Ljava/net/DatagramPacket;->data:[B
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getLength()I
    .locals 1

    .prologue
    .line 145
    monitor-enter p0

    :try_start_0
    iget v0, p0, Ljava/net/DatagramPacket;->length:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getOffset()I
    .locals 1

    .prologue
    .line 154
    monitor-enter p0

    :try_start_0
    iget v0, p0, Ljava/net/DatagramPacket;->offset:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getPort()I
    .locals 1

    .prologue
    .line 164
    monitor-enter p0

    :try_start_0
    iget v0, p0, Ljava/net/DatagramPacket;->port:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getSocketAddress()Ljava/net/SocketAddress;
    .locals 3

    .prologue
    .line 299
    monitor-enter p0

    :try_start_0
    new-instance v0, Ljava/net/InetSocketAddress;

    invoke-virtual {p0}, Ljava/net/DatagramPacket;->getAddress()Ljava/net/InetAddress;

    move-result-object v1

    invoke-virtual {p0}, Ljava/net/DatagramPacket;->getPort()I

    move-result v2

    invoke-direct {v0, v1, v2}, Ljava/net/InetSocketAddress;-><init>(Ljava/net/InetAddress;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public resetLengthForReceive()V
    .locals 1

    .prologue
    .line 225
    iget v0, p0, Ljava/net/DatagramPacket;->userSuppliedLength:I

    iput v0, p0, Ljava/net/DatagramPacket;->length:I

    .line 226
    return-void
.end method

.method public declared-synchronized setAddress(Ljava/net/InetAddress;)V
    .locals 1
    .param p1, "addr"    # Ljava/net/InetAddress;

    .prologue
    .line 174
    monitor-enter p0

    :try_start_0
    iput-object p1, p0, Ljava/net/DatagramPacket;->address:Ljava/net/InetAddress;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 175
    monitor-exit p0

    return-void

    .line 174
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setData([B)V
    .locals 1
    .param p1, "buf"    # [B

    .prologue
    .line 198
    monitor-enter p0

    :try_start_0
    array-length v0, p1

    iput v0, p0, Ljava/net/DatagramPacket;->length:I

    .line 199
    iget v0, p0, Ljava/net/DatagramPacket;->length:I

    iput v0, p0, Ljava/net/DatagramPacket;->userSuppliedLength:I

    .line 200
    iput-object p1, p0, Ljava/net/DatagramPacket;->data:[B

    .line 201
    const/4 v0, 0x0

    iput v0, p0, Ljava/net/DatagramPacket;->offset:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 202
    monitor-exit p0

    return-void

    .line 198
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setData([BII)V
    .locals 1
    .param p1, "data"    # [B
    .param p2, "offset"    # I
    .param p3, "byteCount"    # I

    .prologue
    .line 181
    monitor-enter p0

    or-int v0, p2, p3

    if-ltz v0, :cond_0

    :try_start_0
    array-length v0, p1

    if-gt p2, v0, :cond_0

    array-length v0, p1

    sub-int/2addr v0, p2

    if-le p3, v0, :cond_1

    .line 182
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 181
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 184
    :cond_1
    :try_start_1
    iput-object p1, p0, Ljava/net/DatagramPacket;->data:[B

    .line 185
    iput p2, p0, Ljava/net/DatagramPacket;->offset:I

    .line 186
    iput p3, p0, Ljava/net/DatagramPacket;->length:I

    .line 187
    iput p3, p0, Ljava/net/DatagramPacket;->userSuppliedLength:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 188
    monitor-exit p0

    return-void
.end method

.method public declared-synchronized setLength(I)V
    .locals 3
    .param p1, "length"    # I

    .prologue
    .line 212
    monitor-enter p0

    if-ltz p1, :cond_0

    :try_start_0
    iget v0, p0, Ljava/net/DatagramPacket;->offset:I

    add-int/2addr v0, p1

    iget-object v1, p0, Ljava/net/DatagramPacket;->data:[B

    array-length v1, v1

    if-le v0, v1, :cond_1

    .line 213
    :cond_0
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "length="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", offset="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Ljava/net/DatagramPacket;->offset:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", buffer size="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Ljava/net/DatagramPacket;->data:[B

    array-length v2, v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 212
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 216
    :cond_1
    :try_start_1
    iput p1, p0, Ljava/net/DatagramPacket;->length:I

    .line 217
    iput p1, p0, Ljava/net/DatagramPacket;->userSuppliedLength:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 218
    monitor-exit p0

    return-void
.end method

.method public declared-synchronized setPort(I)V
    .locals 3
    .param p1, "aPort"    # I

    .prologue
    .line 243
    monitor-enter p0

    if-ltz p1, :cond_0

    const v0, 0xffff

    if-le p1, v0, :cond_1

    .line 244
    :cond_0
    :try_start_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Port out of range: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 243
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 246
    :cond_1
    :try_start_1
    iput p1, p0, Ljava/net/DatagramPacket;->port:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 247
    monitor-exit p0

    return-void
.end method

.method public setReceivedLength(I)V
    .locals 0
    .param p1, "length"    # I

    .prologue
    .line 233
    iput p1, p0, Ljava/net/DatagramPacket;->length:I

    .line 234
    return-void
.end method

.method public declared-synchronized setSocketAddress(Ljava/net/SocketAddress;)V
    .locals 5
    .param p1, "sockAddr"    # Ljava/net/SocketAddress;

    .prologue
    .line 309
    monitor-enter p0

    :try_start_0
    instance-of v2, p1, Ljava/net/InetSocketAddress;

    if-nez v2, :cond_1

    .line 310
    new-instance v3, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Socket address not an InetSocketAddress: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    if-nez p1, :cond_0

    const/4 v2, 0x0

    :goto_0
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v3, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 309
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2

    .line 310
    :cond_0
    :try_start_1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    goto :goto_0

    .line 313
    :cond_1
    move-object v0, p1

    check-cast v0, Ljava/net/InetSocketAddress;

    move-object v1, v0

    .line 314
    .local v1, "inetAddr":Ljava/net/InetSocketAddress;
    invoke-virtual {v1}, Ljava/net/InetSocketAddress;->isUnresolved()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 315
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Socket address unresolved: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 317
    :cond_2
    invoke-virtual {v1}, Ljava/net/InetSocketAddress;->getPort()I

    move-result v2

    iput v2, p0, Ljava/net/DatagramPacket;->port:I

    .line 318
    invoke-virtual {v1}, Ljava/net/InetSocketAddress;->getAddress()Ljava/net/InetAddress;

    move-result-object v2

    iput-object v2, p0, Ljava/net/DatagramPacket;->address:Ljava/net/InetAddress;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 319
    monitor-exit p0

    return-void
.end method
