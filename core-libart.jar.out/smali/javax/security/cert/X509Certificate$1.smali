.class final Ljavax/security/cert/X509Certificate$1;
.super Ljavax/security/cert/X509Certificate;
.source "X509Certificate.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ljavax/security/cert/X509Certificate;->getInstance(Ljava/io/InputStream;)Ljavax/security/cert/X509Certificate;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$cert:Ljava/security/cert/X509Certificate;


# direct methods
.method constructor <init>(Ljava/security/cert/X509Certificate;)V
    .locals 0

    .prologue
    .line 97
    iput-object p1, p0, Ljavax/security/cert/X509Certificate$1;->val$cert:Ljava/security/cert/X509Certificate;

    invoke-direct {p0}, Ljavax/security/cert/X509Certificate;-><init>()V

    return-void
.end method


# virtual methods
.method public checkValidity()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/security/cert/CertificateExpiredException;,
            Ljavax/security/cert/CertificateNotYetValidException;
        }
    .end annotation

    .prologue
    .line 139
    :try_start_0
    iget-object v1, p0, Ljavax/security/cert/X509Certificate$1;->val$cert:Ljava/security/cert/X509Certificate;

    invoke-virtual {v1}, Ljava/security/cert/X509Certificate;->checkValidity()V
    :try_end_0
    .catch Ljava/security/cert/CertificateNotYetValidException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/security/cert/CertificateExpiredException; {:try_start_0 .. :try_end_0} :catch_1

    .line 145
    return-void

    .line 140
    :catch_0
    move-exception v0

    .line 141
    .local v0, "e":Ljava/security/cert/CertificateNotYetValidException;
    new-instance v1, Ljavax/security/cert/CertificateNotYetValidException;

    invoke-virtual {v0}, Ljava/security/cert/CertificateNotYetValidException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljavax/security/cert/CertificateNotYetValidException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 142
    .end local v0    # "e":Ljava/security/cert/CertificateNotYetValidException;
    :catch_1
    move-exception v0

    .line 143
    .local v0, "e":Ljava/security/cert/CertificateExpiredException;
    new-instance v1, Ljavax/security/cert/CertificateExpiredException;

    invoke-virtual {v0}, Ljava/security/cert/CertificateExpiredException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljavax/security/cert/CertificateExpiredException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public checkValidity(Ljava/util/Date;)V
    .locals 3
    .param p1, "date"    # Ljava/util/Date;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/security/cert/CertificateExpiredException;,
            Ljavax/security/cert/CertificateNotYetValidException;
        }
    .end annotation

    .prologue
    .line 151
    :try_start_0
    iget-object v1, p0, Ljavax/security/cert/X509Certificate$1;->val$cert:Ljava/security/cert/X509Certificate;

    invoke-virtual {v1, p1}, Ljava/security/cert/X509Certificate;->checkValidity(Ljava/util/Date;)V
    :try_end_0
    .catch Ljava/security/cert/CertificateNotYetValidException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/security/cert/CertificateExpiredException; {:try_start_0 .. :try_end_0} :catch_1

    .line 157
    return-void

    .line 152
    :catch_0
    move-exception v0

    .line 153
    .local v0, "e":Ljava/security/cert/CertificateNotYetValidException;
    new-instance v1, Ljavax/security/cert/CertificateNotYetValidException;

    invoke-virtual {v0}, Ljava/security/cert/CertificateNotYetValidException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljavax/security/cert/CertificateNotYetValidException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 154
    .end local v0    # "e":Ljava/security/cert/CertificateNotYetValidException;
    :catch_1
    move-exception v0

    .line 155
    .local v0, "e":Ljava/security/cert/CertificateExpiredException;
    new-instance v1, Ljavax/security/cert/CertificateExpiredException;

    invoke-virtual {v0}, Ljava/security/cert/CertificateExpiredException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljavax/security/cert/CertificateExpiredException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public getEncoded()[B
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/security/cert/CertificateEncodingException;
        }
    .end annotation

    .prologue
    .line 101
    :try_start_0
    iget-object v1, p0, Ljavax/security/cert/X509Certificate$1;->val$cert:Ljava/security/cert/X509Certificate;

    invoke-virtual {v1}, Ljava/security/cert/X509Certificate;->getEncoded()[B
    :try_end_0
    .catch Ljava/security/cert/CertificateEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    return-object v1

    .line 102
    :catch_0
    move-exception v0

    .line 103
    .local v0, "e":Ljava/security/cert/CertificateEncodingException;
    new-instance v1, Ljavax/security/cert/CertificateEncodingException;

    invoke-virtual {v0}, Ljava/security/cert/CertificateEncodingException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljavax/security/cert/CertificateEncodingException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public getIssuerDN()Ljava/security/Principal;
    .locals 1

    .prologue
    .line 168
    iget-object v0, p0, Ljavax/security/cert/X509Certificate$1;->val$cert:Ljava/security/cert/X509Certificate;

    invoke-virtual {v0}, Ljava/security/cert/X509Certificate;->getIssuerDN()Ljava/security/Principal;

    move-result-object v0

    return-object v0
.end method

.method public getNotAfter()Ljava/util/Date;
    .locals 1

    .prologue
    .line 180
    iget-object v0, p0, Ljavax/security/cert/X509Certificate$1;->val$cert:Ljava/security/cert/X509Certificate;

    invoke-virtual {v0}, Ljava/security/cert/X509Certificate;->getNotAfter()Ljava/util/Date;

    move-result-object v0

    return-object v0
.end method

.method public getNotBefore()Ljava/util/Date;
    .locals 1

    .prologue
    .line 176
    iget-object v0, p0, Ljavax/security/cert/X509Certificate$1;->val$cert:Ljava/security/cert/X509Certificate;

    invoke-virtual {v0}, Ljava/security/cert/X509Certificate;->getNotBefore()Ljava/util/Date;

    move-result-object v0

    return-object v0
.end method

.method public getPublicKey()Ljava/security/PublicKey;
    .locals 1

    .prologue
    .line 133
    iget-object v0, p0, Ljavax/security/cert/X509Certificate$1;->val$cert:Ljava/security/cert/X509Certificate;

    invoke-virtual {v0}, Ljava/security/cert/X509Certificate;->getPublicKey()Ljava/security/PublicKey;

    move-result-object v0

    return-object v0
.end method

.method public getSerialNumber()Ljava/math/BigInteger;
    .locals 1

    .prologue
    .line 164
    iget-object v0, p0, Ljavax/security/cert/X509Certificate$1;->val$cert:Ljava/security/cert/X509Certificate;

    invoke-virtual {v0}, Ljava/security/cert/X509Certificate;->getSerialNumber()Ljava/math/BigInteger;

    move-result-object v0

    return-object v0
.end method

.method public getSigAlgName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 184
    iget-object v0, p0, Ljavax/security/cert/X509Certificate$1;->val$cert:Ljava/security/cert/X509Certificate;

    invoke-virtual {v0}, Ljava/security/cert/X509Certificate;->getSigAlgName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSigAlgOID()Ljava/lang/String;
    .locals 1

    .prologue
    .line 188
    iget-object v0, p0, Ljavax/security/cert/X509Certificate$1;->val$cert:Ljava/security/cert/X509Certificate;

    invoke-virtual {v0}, Ljava/security/cert/X509Certificate;->getSigAlgOID()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSigAlgParams()[B
    .locals 1

    .prologue
    .line 192
    iget-object v0, p0, Ljavax/security/cert/X509Certificate$1;->val$cert:Ljava/security/cert/X509Certificate;

    invoke-virtual {v0}, Ljava/security/cert/X509Certificate;->getSigAlgParams()[B

    move-result-object v0

    return-object v0
.end method

.method public getSubjectDN()Ljava/security/Principal;
    .locals 1

    .prologue
    .line 172
    iget-object v0, p0, Ljavax/security/cert/X509Certificate$1;->val$cert:Ljava/security/cert/X509Certificate;

    invoke-virtual {v0}, Ljava/security/cert/X509Certificate;->getSubjectDN()Ljava/security/Principal;

    move-result-object v0

    return-object v0
.end method

.method public getVersion()I
    .locals 1

    .prologue
    .line 160
    const/4 v0, 0x2

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 129
    iget-object v0, p0, Ljavax/security/cert/X509Certificate$1;->val$cert:Ljava/security/cert/X509Certificate;

    invoke-virtual {v0}, Ljava/security/cert/X509Certificate;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public verify(Ljava/security/PublicKey;)V
    .locals 3
    .param p1, "key"    # Ljava/security/PublicKey;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/security/cert/CertificateException;,
            Ljava/security/NoSuchAlgorithmException;,
            Ljava/security/InvalidKeyException;,
            Ljava/security/NoSuchProviderException;,
            Ljava/security/SignatureException;
        }
    .end annotation

    .prologue
    .line 111
    :try_start_0
    iget-object v1, p0, Ljavax/security/cert/X509Certificate$1;->val$cert:Ljava/security/cert/X509Certificate;

    invoke-virtual {v1, p1}, Ljava/security/cert/X509Certificate;->verify(Ljava/security/PublicKey;)V
    :try_end_0
    .catch Ljava/security/cert/CertificateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 115
    return-void

    .line 112
    :catch_0
    move-exception v0

    .line 113
    .local v0, "e":Ljava/security/cert/CertificateException;
    new-instance v1, Ljavax/security/cert/CertificateException;

    invoke-virtual {v0}, Ljava/security/cert/CertificateException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljavax/security/cert/CertificateException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public verify(Ljava/security/PublicKey;Ljava/lang/String;)V
    .locals 3
    .param p1, "key"    # Ljava/security/PublicKey;
    .param p2, "sigProvider"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/security/cert/CertificateException;,
            Ljava/security/NoSuchAlgorithmException;,
            Ljava/security/InvalidKeyException;,
            Ljava/security/NoSuchProviderException;,
            Ljava/security/SignatureException;
        }
    .end annotation

    .prologue
    .line 122
    :try_start_0
    iget-object v1, p0, Ljavax/security/cert/X509Certificate$1;->val$cert:Ljava/security/cert/X509Certificate;

    invoke-virtual {v1, p1, p2}, Ljava/security/cert/X509Certificate;->verify(Ljava/security/PublicKey;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/security/cert/CertificateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 126
    return-void

    .line 123
    :catch_0
    move-exception v0

    .line 124
    .local v0, "e":Ljava/security/cert/CertificateException;
    new-instance v1, Ljavax/security/cert/CertificateException;

    invoke-virtual {v0}, Ljava/security/cert/CertificateException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljavax/security/cert/CertificateException;-><init>(Ljava/lang/String;)V

    throw v1
.end method
