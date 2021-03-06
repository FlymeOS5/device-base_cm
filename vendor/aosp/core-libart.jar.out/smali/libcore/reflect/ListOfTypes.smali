.class public final Llibcore/reflect/ListOfTypes;
.super Ljava/lang/Object;
.source "ListOfTypes.java"


# static fields
.field public static final EMPTY:Llibcore/reflect/ListOfTypes;


# instance fields
.field private resolvedTypes:[Ljava/lang/reflect/Type;

.field private final types:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/reflect/Type;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 25
    new-instance v0, Llibcore/reflect/ListOfTypes;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Llibcore/reflect/ListOfTypes;-><init>(I)V

    sput-object v0, Llibcore/reflect/ListOfTypes;->EMPTY:Llibcore/reflect/ListOfTypes;

    return-void
.end method

.method constructor <init>(I)V
    .locals 1
    .param p1, "capacity"    # I

    .prologue
    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Llibcore/reflect/ListOfTypes;->types:Ljava/util/ArrayList;

    .line 32
    return-void
.end method

.method constructor <init>([Ljava/lang/reflect/Type;)V
    .locals 6
    .param p1, "types"    # [Ljava/lang/reflect/Type;

    .prologue
    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    new-instance v4, Ljava/util/ArrayList;

    array-length v5, p1

    invoke-direct {v4, v5}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v4, p0, Llibcore/reflect/ListOfTypes;->types:Ljava/util/ArrayList;

    .line 36
    move-object v0, p1

    .local v0, "arr$":[Ljava/lang/reflect/Type;
    array-length v2, v0

    .local v2, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_0
    if-ge v1, v2, :cond_0

    aget-object v3, v0, v1

    .line 37
    .local v3, "type":Ljava/lang/reflect/Type;
    iget-object v4, p0, Llibcore/reflect/ListOfTypes;->types:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 36
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 39
    .end local v3    # "type":Ljava/lang/reflect/Type;
    :cond_0
    return-void
.end method

.method private resolveTypes(Ljava/util/List;)[Ljava/lang/reflect/Type;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/reflect/Type;",
            ">;)[",
            "Ljava/lang/reflect/Type;"
        }
    .end annotation

    .prologue
    .line 62
    .local p1, "unresolved":Ljava/util/List;, "Ljava/util/List<Ljava/lang/reflect/Type;>;"
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v4

    .line 63
    .local v4, "size":I
    if-nez v4, :cond_1

    .line 64
    sget-object v3, Llibcore/util/EmptyArray;->TYPE:[Ljava/lang/reflect/Type;

    .line 75
    :cond_0
    return-object v3

    .line 66
    :cond_1
    new-array v3, v4, [Ljava/lang/reflect/Type;

    .line 67
    .local v3, "result":[Ljava/lang/reflect/Type;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v4, :cond_0

    .line 68
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/reflect/Type;

    .line 70
    .local v5, "type":Ljava/lang/reflect/Type;
    :try_start_0
    move-object v0, v5

    check-cast v0, Llibcore/reflect/ParameterizedTypeImpl;

    move-object v6, v0

    invoke-virtual {v6}, Llibcore/reflect/ParameterizedTypeImpl;->getResolvedType()Ljava/lang/reflect/Type;

    move-result-object v6

    aput-object v6, v3, v2
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    .line 67
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 71
    :catch_0
    move-exception v1

    .line 72
    .local v1, "e":Ljava/lang/ClassCastException;
    aput-object v5, v3, v2

    goto :goto_1
.end method


# virtual methods
.method add(Ljava/lang/reflect/Type;)V
    .locals 2
    .param p1, "type"    # Ljava/lang/reflect/Type;

    .prologue
    .line 42
    if-nez p1, :cond_0

    .line 43
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "type == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 45
    :cond_0
    iget-object v0, p0, Llibcore/reflect/ListOfTypes;->types:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 46
    return-void
.end method

.method public getResolvedTypes()[Ljava/lang/reflect/Type;
    .locals 2

    .prologue
    .line 53
    iget-object v0, p0, Llibcore/reflect/ListOfTypes;->resolvedTypes:[Ljava/lang/reflect/Type;

    .line 54
    .local v0, "result":[Ljava/lang/reflect/Type;
    if-nez v0, :cond_0

    .line 55
    iget-object v1, p0, Llibcore/reflect/ListOfTypes;->types:Ljava/util/ArrayList;

    invoke-direct {p0, v1}, Llibcore/reflect/ListOfTypes;->resolveTypes(Ljava/util/List;)[Ljava/lang/reflect/Type;

    move-result-object v0

    .line 56
    iput-object v0, p0, Llibcore/reflect/ListOfTypes;->resolvedTypes:[Ljava/lang/reflect/Type;

    .line 58
    :cond_0
    return-object v0
.end method

.method length()I
    .locals 1

    .prologue
    .line 49
    iget-object v0, p0, Llibcore/reflect/ListOfTypes;->types:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 79
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 80
    .local v1, "result":Ljava/lang/StringBuilder;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v2, p0, Llibcore/reflect/ListOfTypes;->types:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_1

    .line 81
    if-lez v0, :cond_0

    .line 82
    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 84
    :cond_0
    iget-object v2, p0, Llibcore/reflect/ListOfTypes;->types:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 80
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 86
    :cond_1
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method
