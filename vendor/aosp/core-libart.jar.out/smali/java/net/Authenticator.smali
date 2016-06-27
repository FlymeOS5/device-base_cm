.class public abstract Ljava/net/Authenticator;
.super Ljava/lang/Object;
.source "Authenticator.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljava/net/Authenticator$RequestorType;
    }
.end annotation


# static fields
.field private static thisAuthenticator:Ljava/net/Authenticator;


# instance fields
.field private addr:Ljava/net/InetAddress;

.field private host:Ljava/lang/String;

.field private port:I

.field private prompt:Ljava/lang/String;

.field private protocol:Ljava/lang/String;

.field private rt:Ljava/net/Authenticator$RequestorType;

.field private scheme:Ljava/lang/String;

.field private url:Ljava/net/URL;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 272
    return-void
.end method

.method public static declared-synchronized requestPasswordAuthentication(Ljava/lang/String;Ljava/net/InetAddress;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/net/PasswordAuthentication;
    .locals 3
    .param p0, "rHost"    # Ljava/lang/String;
    .param p1, "rAddr"    # Ljava/net/InetAddress;
    .param p2, "rPort"    # I
    .param p3, "rProtocol"    # Ljava/lang/String;
    .param p4, "rPrompt"    # Ljava/lang/String;
    .param p5, "rScheme"    # Ljava/lang/String;

    .prologue
    .line 176
    const-class v1, Ljava/net/Authenticator;

    monitor-enter v1

    :try_start_0
    sget-object v0, Ljava/net/Authenticator;->thisAuthenticator:Ljava/net/Authenticator;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    .line 177
    const/4 v0, 0x0

    .line 191
    :goto_0
    monitor-exit v1

    return-object v0

    .line 181
    :cond_0
    :try_start_1
    sget-object v0, Ljava/net/Authenticator;->thisAuthenticator:Ljava/net/Authenticator;

    iput-object p0, v0, Ljava/net/Authenticator;->host:Ljava/lang/String;

    .line 182
    sget-object v0, Ljava/net/Authenticator;->thisAuthenticator:Ljava/net/Authenticator;

    iput-object p1, v0, Ljava/net/Authenticator;->addr:Ljava/net/InetAddress;

    .line 183
    sget-object v0, Ljava/net/Authenticator;->thisAuthenticator:Ljava/net/Authenticator;

    iput p2, v0, Ljava/net/Authenticator;->port:I

    .line 184
    sget-object v0, Ljava/net/Authenticator;->thisAuthenticator:Ljava/net/Authenticator;

    iput-object p3, v0, Ljava/net/Authenticator;->protocol:Ljava/lang/String;

    .line 185
    sget-object v0, Ljava/net/Authenticator;->thisAuthenticator:Ljava/net/Authenticator;

    iput-object p4, v0, Ljava/net/Authenticator;->prompt:Ljava/lang/String;

    .line 186
    sget-object v0, Ljava/net/Authenticator;->thisAuthenticator:Ljava/net/Authenticator;

    iput-object p5, v0, Ljava/net/Authenticator;->scheme:Ljava/lang/String;

    .line 187
    sget-object v0, Ljava/net/Authenticator;->thisAuthenticator:Ljava/net/Authenticator;

    sget-object v2, Ljava/net/Authenticator$RequestorType;->SERVER:Ljava/net/Authenticator$RequestorType;

    iput-object v2, v0, Ljava/net/Authenticator;->rt:Ljava/net/Authenticator$RequestorType;

    .line 191
    sget-object v0, Ljava/net/Authenticator;->thisAuthenticator:Ljava/net/Authenticator;

    invoke-virtual {v0}, Ljava/net/Authenticator;->getPasswordAuthentication()Ljava/net/PasswordAuthentication;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v0

    goto :goto_0

    .line 176
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static requestPasswordAuthentication(Ljava/lang/String;Ljava/net/InetAddress;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/net/URL;Ljava/net/Authenticator$RequestorType;)Ljava/net/PasswordAuthentication;
    .locals 1
    .param p0, "rHost"    # Ljava/lang/String;
    .param p1, "rAddr"    # Ljava/net/InetAddress;
    .param p2, "rPort"    # I
    .param p3, "rProtocol"    # Ljava/lang/String;
    .param p4, "rPrompt"    # Ljava/lang/String;
    .param p5, "rScheme"    # Ljava/lang/String;
    .param p6, "rURL"    # Ljava/net/URL;
    .param p7, "reqType"    # Ljava/net/Authenticator$RequestorType;

    .prologue
    .line 231
    sget-object v0, Ljava/net/Authenticator;->thisAuthenticator:Ljava/net/Authenticator;

    if-nez v0, :cond_0

    .line 232
    const/4 v0, 0x0

    .line 247
    :goto_0
    return-object v0

    .line 236
    :cond_0
    sget-object v0, Ljava/net/Authenticator;->thisAuthenticator:Ljava/net/Authenticator;

    iput-object p0, v0, Ljava/net/Authenticator;->host:Ljava/lang/String;

    .line 237
    sget-object v0, Ljava/net/Authenticator;->thisAuthenticator:Ljava/net/Authenticator;

    iput-object p1, v0, Ljava/net/Authenticator;->addr:Ljava/net/InetAddress;

    .line 238
    sget-object v0, Ljava/net/Authenticator;->thisAuthenticator:Ljava/net/Authenticator;

    iput p2, v0, Ljava/net/Authenticator;->port:I

    .line 239
    sget-object v0, Ljava/net/Authenticator;->thisAuthenticator:Ljava/net/Authenticator;

    iput-object p3, v0, Ljava/net/Authenticator;->protocol:Ljava/lang/String;

    .line 240
    sget-object v0, Ljava/net/Authenticator;->thisAuthenticator:Ljava/net/Authenticator;

    iput-object p4, v0, Ljava/net/Authenticator;->prompt:Ljava/lang/String;

    .line 241
    sget-object v0, Ljava/net/Authenticator;->thisAuthenticator:Ljava/net/Authenticator;

    iput-object p5, v0, Ljava/net/Authenticator;->scheme:Ljava/lang/String;

    .line 242
    sget-object v0, Ljava/net/Authenticator;->thisAuthenticator:Ljava/net/Authenticator;

    iput-object p6, v0, Ljava/net/Authenticator;->url:Ljava/net/URL;

    .line 243
    sget-object v0, Ljava/net/Authenticator;->thisAuthenticator:Ljava/net/Authenticator;

    iput-object p7, v0, Ljava/net/Authenticator;->rt:Ljava/net/Authenticator$RequestorType;

    .line 247
    sget-object v0, Ljava/net/Authenticator;->thisAuthenticator:Ljava/net/Authenticator;

    invoke-virtual {v0}, Ljava/net/Authenticator;->getPasswordAuthentication()Ljava/net/PasswordAuthentication;

    move-result-object v0

    goto :goto_0
.end method

.method public static declared-synchronized requestPasswordAuthentication(Ljava/net/InetAddress;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/net/PasswordAuthentication;
    .locals 3
    .param p0, "rAddr"    # Ljava/net/InetAddress;
    .param p1, "rPort"    # I
    .param p2, "rProtocol"    # Ljava/lang/String;
    .param p3, "rPrompt"    # Ljava/lang/String;
    .param p4, "rScheme"    # Ljava/lang/String;

    .prologue
    .line 126
    const-class v1, Ljava/net/Authenticator;

    monitor-enter v1

    :try_start_0
    sget-object v0, Ljava/net/Authenticator;->thisAuthenticator:Ljava/net/Authenticator;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    .line 127
    const/4 v0, 0x0

    .line 140
    :goto_0
    monitor-exit v1

    return-object v0

    .line 131
    :cond_0
    :try_start_1
    sget-object v0, Ljava/net/Authenticator;->thisAuthenticator:Ljava/net/Authenticator;

    iput-object p0, v0, Ljava/net/Authenticator;->addr:Ljava/net/InetAddress;

    .line 132
    sget-object v0, Ljava/net/Authenticator;->thisAuthenticator:Ljava/net/Authenticator;

    iput p1, v0, Ljava/net/Authenticator;->port:I

    .line 133
    sget-object v0, Ljava/net/Authenticator;->thisAuthenticator:Ljava/net/Authenticator;

    iput-object p2, v0, Ljava/net/Authenticator;->protocol:Ljava/lang/String;

    .line 134
    sget-object v0, Ljava/net/Authenticator;->thisAuthenticator:Ljava/net/Authenticator;

    iput-object p3, v0, Ljava/net/Authenticator;->prompt:Ljava/lang/String;

    .line 135
    sget-object v0, Ljava/net/Authenticator;->thisAuthenticator:Ljava/net/Authenticator;

    iput-object p4, v0, Ljava/net/Authenticator;->scheme:Ljava/lang/String;

    .line 136
    sget-object v0, Ljava/net/Authenticator;->thisAuthenticator:Ljava/net/Authenticator;

    sget-object v2, Ljava/net/Authenticator$RequestorType;->SERVER:Ljava/net/Authenticator$RequestorType;

    iput-object v2, v0, Ljava/net/Authenticator;->rt:Ljava/net/Authenticator$RequestorType;

    .line 140
    sget-object v0, Ljava/net/Authenticator;->thisAuthenticator:Ljava/net/Authenticator;

    invoke-virtual {v0}, Ljava/net/Authenticator;->getPasswordAuthentication()Ljava/net/PasswordAuthentication;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v0

    goto :goto_0

    .line 126
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static setDefault(Ljava/net/Authenticator;)V
    .locals 0
    .param p0, "a"    # Ljava/net/Authenticator;

    .prologue
    .line 151
    sput-object p0, Ljava/net/Authenticator;->thisAuthenticator:Ljava/net/Authenticator;

    .line 152
    return-void
.end method


# virtual methods
.method protected getPasswordAuthentication()Ljava/net/PasswordAuthentication;
    .locals 1

    .prologue
    .line 55
    const/4 v0, 0x0

    return-object v0
.end method

.method protected final getRequestingHost()Ljava/lang/String;
    .locals 1

    .prologue
    .line 201
    iget-object v0, p0, Ljava/net/Authenticator;->host:Ljava/lang/String;

    return-object v0
.end method

.method protected final getRequestingPort()I
    .locals 1

    .prologue
    .line 64
    iget v0, p0, Ljava/net/Authenticator;->port:I

    return v0
.end method

.method protected final getRequestingPrompt()Ljava/lang/String;
    .locals 1

    .prologue
    .line 84
    iget-object v0, p0, Ljava/net/Authenticator;->prompt:Ljava/lang/String;

    return-object v0
.end method

.method protected final getRequestingProtocol()Ljava/lang/String;
    .locals 1

    .prologue
    .line 93
    iget-object v0, p0, Ljava/net/Authenticator;->protocol:Ljava/lang/String;

    return-object v0
.end method

.method protected final getRequestingScheme()Ljava/lang/String;
    .locals 1

    .prologue
    .line 103
    iget-object v0, p0, Ljava/net/Authenticator;->scheme:Ljava/lang/String;

    return-object v0
.end method

.method protected final getRequestingSite()Ljava/net/InetAddress;
    .locals 1

    .prologue
    .line 74
    iget-object v0, p0, Ljava/net/Authenticator;->addr:Ljava/net/InetAddress;

    return-object v0
.end method

.method protected getRequestingURL()Ljava/net/URL;
    .locals 1

    .prologue
    .line 257
    iget-object v0, p0, Ljava/net/Authenticator;->url:Ljava/net/URL;

    return-object v0
.end method

.method protected getRequestorType()Ljava/net/Authenticator$RequestorType;
    .locals 1

    .prologue
    .line 266
    iget-object v0, p0, Ljava/net/Authenticator;->rt:Ljava/net/Authenticator$RequestorType;

    return-object v0
.end method
