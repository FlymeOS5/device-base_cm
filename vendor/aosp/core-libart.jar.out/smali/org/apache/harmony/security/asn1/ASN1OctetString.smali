.class public Lorg/apache/harmony/security/asn1/ASN1OctetString;
.super Lorg/apache/harmony/security/asn1/ASN1StringType;
.source "ASN1OctetString.java"


# static fields
.field private static final ASN1:Lorg/apache/harmony/security/asn1/ASN1OctetString;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 37
    new-instance v0, Lorg/apache/harmony/security/asn1/ASN1OctetString;

    invoke-direct {v0}, Lorg/apache/harmony/security/asn1/ASN1OctetString;-><init>()V

    sput-object v0, Lorg/apache/harmony/security/asn1/ASN1OctetString;->ASN1:Lorg/apache/harmony/security/asn1/ASN1OctetString;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 48
    const/4 v0, 0x4

    invoke-direct {p0, v0}, Lorg/apache/harmony/security/asn1/ASN1StringType;-><init>(I)V

    .line 49
    return-void
.end method

.method public static getInstance()Lorg/apache/harmony/security/asn1/ASN1OctetString;
    .locals 1

    .prologue
    .line 58
    sget-object v0, Lorg/apache/harmony/security/asn1/ASN1OctetString;->ASN1:Lorg/apache/harmony/security/asn1/ASN1OctetString;

    return-object v0
.end method


# virtual methods
.method public decode(Lorg/apache/harmony/security/asn1/BerInputStream;)Ljava/lang/Object;
    .locals 1
    .param p1, "in"    # Lorg/apache/harmony/security/asn1/BerInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 62
    invoke-virtual {p1}, Lorg/apache/harmony/security/asn1/BerInputStream;->readOctetString()V

    .line 64
    iget-boolean v0, p1, Lorg/apache/harmony/security/asn1/BerInputStream;->isVerify:Z

    if-eqz v0, :cond_0

    .line 65
    const/4 v0, 0x0

    .line 67
    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0, p1}, Lorg/apache/harmony/security/asn1/ASN1OctetString;->getDecodedObject(Lorg/apache/harmony/security/asn1/BerInputStream;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0
.end method

.method public encodeContent(Lorg/apache/harmony/security/asn1/BerOutputStream;)V
    .locals 0
    .param p1, "out"    # Lorg/apache/harmony/security/asn1/BerOutputStream;

    .prologue
    .line 80
    invoke-virtual {p1}, Lorg/apache/harmony/security/asn1/BerOutputStream;->encodeOctetString()V

    .line 81
    return-void
.end method

.method public getDecodedObject(Lorg/apache/harmony/security/asn1/BerInputStream;)Ljava/lang/Object;
    .locals 4
    .param p1, "in"    # Lorg/apache/harmony/security/asn1/BerInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 76
    iget-object v0, p1, Lorg/apache/harmony/security/asn1/BerInputStream;->buffer:[B

    iget v1, p1, Lorg/apache/harmony/security/asn1/BerInputStream;->contentOffset:I

    iget v2, p1, Lorg/apache/harmony/security/asn1/BerInputStream;->contentOffset:I

    iget v3, p1, Lorg/apache/harmony/security/asn1/BerInputStream;->length:I

    add-int/2addr v2, v3

    invoke-static {v0, v1, v2}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v0

    return-object v0
.end method

.method public setEncodingContent(Lorg/apache/harmony/security/asn1/BerOutputStream;)V
    .locals 1
    .param p1, "out"    # Lorg/apache/harmony/security/asn1/BerOutputStream;

    .prologue
    .line 84
    iget-object v0, p1, Lorg/apache/harmony/security/asn1/BerOutputStream;->content:Ljava/lang/Object;

    check-cast v0, [B

    check-cast v0, [B

    array-length v0, v0

    iput v0, p1, Lorg/apache/harmony/security/asn1/BerOutputStream;->length:I

    .line 85
    return-void
.end method
