.class public Ljavax/security/auth/callback/PasswordCallback;
.super Ljava/lang/Object;
.source "PasswordCallback.java"

# interfaces
.implements Ljavax/security/auth/callback/Callback;
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = 0x1f7780e27139c5e6L


# instance fields
.field echoOn:Z

.field private inputPassword:[C

.field private prompt:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Z)V
    .locals 0
    .param p1, "prompt"    # Ljava/lang/String;
    .param p2, "echoOn"    # Z

    .prologue
    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 53
    invoke-direct {p0, p1}, Ljavax/security/auth/callback/PasswordCallback;->setPrompt(Ljava/lang/String;)V

    .line 54
    iput-boolean p2, p0, Ljavax/security/auth/callback/PasswordCallback;->echoOn:Z

    .line 55
    return-void
.end method

.method private setPrompt(Ljava/lang/String;)V
    .locals 2
    .param p1, "prompt"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    .line 38
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_1

    .line 39
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Invalid prompt"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 41
    :cond_1
    iput-object p1, p0, Ljavax/security/auth/callback/PasswordCallback;->prompt:Ljava/lang/String;

    .line 42
    return-void
.end method


# virtual methods
.method public clearPassword()V
    .locals 2

    .prologue
    .line 117
    iget-object v0, p0, Ljavax/security/auth/callback/PasswordCallback;->inputPassword:[C

    if-eqz v0, :cond_0

    .line 118
    iget-object v0, p0, Ljavax/security/auth/callback/PasswordCallback;->inputPassword:[C

    const/4 v1, 0x0

    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([CC)V

    .line 120
    :cond_0
    return-void
.end method

.method public getPassword()[C
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 105
    iget-object v1, p0, Ljavax/security/auth/callback/PasswordCallback;->inputPassword:[C

    if-eqz v1, :cond_0

    .line 106
    iget-object v1, p0, Ljavax/security/auth/callback/PasswordCallback;->inputPassword:[C

    array-length v1, v1

    new-array v0, v1, [C

    .line 107
    .local v0, "tmp":[C
    iget-object v1, p0, Ljavax/security/auth/callback/PasswordCallback;->inputPassword:[C

    array-length v2, v0

    invoke-static {v1, v3, v0, v3, v2}, Ljava/lang/System;->arraycopy([CI[CII)V

    .line 110
    .end local v0    # "tmp":[C
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getPrompt()Ljava/lang/String;
    .locals 1

    .prologue
    .line 64
    iget-object v0, p0, Ljavax/security/auth/callback/PasswordCallback;->prompt:Ljava/lang/String;

    return-object v0
.end method

.method public isEchoOn()Z
    .locals 1

    .prologue
    .line 74
    iget-boolean v0, p0, Ljavax/security/auth/callback/PasswordCallback;->echoOn:Z

    return v0
.end method

.method public setPassword([C)V
    .locals 3
    .param p1, "password"    # [C

    .prologue
    const/4 v2, 0x0

    .line 87
    if-nez p1, :cond_0

    .line 88
    iput-object p1, p0, Ljavax/security/auth/callback/PasswordCallback;->inputPassword:[C

    .line 93
    :goto_0
    return-void

    .line 90
    :cond_0
    array-length v0, p1

    new-array v0, v0, [C

    iput-object v0, p0, Ljavax/security/auth/callback/PasswordCallback;->inputPassword:[C

    .line 91
    iget-object v0, p0, Ljavax/security/auth/callback/PasswordCallback;->inputPassword:[C

    iget-object v1, p0, Ljavax/security/auth/callback/PasswordCallback;->inputPassword:[C

    array-length v1, v1

    invoke-static {p1, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy([CI[CII)V

    goto :goto_0
.end method
