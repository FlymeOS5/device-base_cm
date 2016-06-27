.class public final Lorg/xml/sax/helpers/XMLReaderFactory;
.super Ljava/lang/Object;
.source "XMLReaderFactory.java"


# static fields
.field private static final property:Ljava/lang/String; = "org.xml.sax.driver"


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 60
    return-void
.end method

.method public static createXMLReader()Lorg/xml/sax/XMLReader;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 109
    const/4 v0, 0x0

    .line 110
    .local v0, "className":Ljava/lang/String;
    invoke-static {}, Lorg/xml/sax/helpers/NewInstance;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v3

    .line 113
    .local v3, "loader":Ljava/lang/ClassLoader;
    :try_start_0
    const-string v6, "org.xml.sax.driver"

    invoke-static {v6}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_2

    move-result-object v0

    .line 117
    :goto_0
    if-nez v0, :cond_0

    .line 119
    :try_start_1
    const-string v5, "META-INF/services/org.xml.sax.driver"

    .line 123
    .local v5, "service":Ljava/lang/String;
    if-nez v3, :cond_2

    .line 124
    invoke-static {v5}, Ljava/lang/ClassLoader;->getSystemResourceAsStream(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v2

    .line 128
    .local v2, "in":Ljava/io/InputStream;
    :goto_1
    if-eqz v2, :cond_0

    .line 129
    new-instance v4, Ljava/io/BufferedReader;

    new-instance v6, Ljava/io/InputStreamReader;

    sget-object v7, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {v6, v2, v7}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/nio/charset/Charset;)V

    invoke-direct {v4, v6}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 130
    .local v4, "reader":Ljava/io/BufferedReader;
    invoke-virtual {v4}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v0

    .line 131
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 138
    .end local v2    # "in":Ljava/io/InputStream;
    .end local v4    # "reader":Ljava/io/BufferedReader;
    .end local v5    # "service":Ljava/lang/String;
    :cond_0
    :goto_2
    if-nez v0, :cond_1

    .line 149
    :cond_1
    if-eqz v0, :cond_3

    .line 150
    invoke-static {v3, v0}, Lorg/xml/sax/helpers/XMLReaderFactory;->loadClass(Ljava/lang/ClassLoader;Ljava/lang/String;)Lorg/xml/sax/XMLReader;

    move-result-object v6

    .line 154
    :goto_3
    return-object v6

    .line 126
    .restart local v5    # "service":Ljava/lang/String;
    :cond_2
    :try_start_2
    invoke-virtual {v3, v5}, Ljava/lang/ClassLoader;->getResourceAsStream(Ljava/lang/String;)Ljava/io/InputStream;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    move-result-object v2

    .restart local v2    # "in":Ljava/io/InputStream;
    goto :goto_1

    .line 154
    .end local v2    # "in":Ljava/io/InputStream;
    .end local v5    # "service":Ljava/lang/String;
    :cond_3
    :try_start_3
    new-instance v6, Lorg/xml/sax/helpers/ParserAdapter;

    invoke-static {}, Lorg/xml/sax/helpers/ParserFactory;->makeParser()Lorg/xml/sax/Parser;

    move-result-object v7

    invoke-direct {v6, v7}, Lorg/xml/sax/helpers/ParserAdapter;-><init>(Lorg/xml/sax/Parser;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_3

    .line 155
    :catch_0
    move-exception v1

    .line 156
    .local v1, "e":Ljava/lang/Exception;
    new-instance v6, Lorg/xml/sax/SAXException;

    const-string v7, "Can\'t create default XMLReader; is system property org.xml.sax.driver set?"

    invoke-direct {v6, v7}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 133
    .end local v1    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v6

    goto :goto_2

    .line 114
    :catch_2
    move-exception v6

    goto :goto_0
.end method

.method public static createXMLReader(Ljava/lang/String;)Lorg/xml/sax/XMLReader;
    .locals 1
    .param p0, "className"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 182
    invoke-static {}, Lorg/xml/sax/helpers/NewInstance;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-static {v0, p0}, Lorg/xml/sax/helpers/XMLReaderFactory;->loadClass(Ljava/lang/ClassLoader;Ljava/lang/String;)Lorg/xml/sax/XMLReader;

    move-result-object v0

    return-object v0
.end method

.method private static loadClass(Ljava/lang/ClassLoader;Ljava/lang/String;)Lorg/xml/sax/XMLReader;
    .locals 7
    .param p0, "loader"    # Ljava/lang/ClassLoader;
    .param p1, "className"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 189
    :try_start_0
    invoke-static {p0, p1}, Lorg/xml/sax/helpers/NewInstance;->newInstance(Ljava/lang/ClassLoader;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/xml/sax/XMLReader;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_3

    return-object v4

    .line 190
    :catch_0
    move-exception v0

    .line 191
    .local v0, "e1":Ljava/lang/ClassNotFoundException;
    new-instance v4, Lorg/xml/sax/SAXException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "SAX2 driver class "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " not found"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5, v0}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v4

    .line 193
    .end local v0    # "e1":Ljava/lang/ClassNotFoundException;
    :catch_1
    move-exception v1

    .line 194
    .local v1, "e2":Ljava/lang/IllegalAccessException;
    new-instance v4, Lorg/xml/sax/SAXException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "SAX2 driver class "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " found but cannot be loaded"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5, v1}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v4

    .line 196
    .end local v1    # "e2":Ljava/lang/IllegalAccessException;
    :catch_2
    move-exception v2

    .line 197
    .local v2, "e3":Ljava/lang/InstantiationException;
    new-instance v4, Lorg/xml/sax/SAXException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "SAX2 driver class "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " loaded but cannot be instantiated (no empty public constructor?)"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5, v2}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v4

    .line 200
    .end local v2    # "e3":Ljava/lang/InstantiationException;
    :catch_3
    move-exception v3

    .line 201
    .local v3, "e4":Ljava/lang/ClassCastException;
    new-instance v4, Lorg/xml/sax/SAXException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "SAX2 driver class "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " does not implement XMLReader"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5, v3}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v4
.end method
