.class final Ljava/util/concurrent/ConcurrentSkipListMap$SubMap;
.super Ljava/util/AbstractMap;
.source "ConcurrentSkipListMap.java"

# interfaces
.implements Ljava/util/concurrent/ConcurrentNavigableMap;
.implements Ljava/lang/Cloneable;
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/util/concurrent/ConcurrentSkipListMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "SubMap"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljava/util/concurrent/ConcurrentSkipListMap$SubMap$SubMapEntryIterator;,
        Ljava/util/concurrent/ConcurrentSkipListMap$SubMap$SubMapKeyIterator;,
        Ljava/util/concurrent/ConcurrentSkipListMap$SubMap$SubMapValueIterator;,
        Ljava/util/concurrent/ConcurrentSkipListMap$SubMap$SubMapIter;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/AbstractMap",
        "<TK;TV;>;",
        "Ljava/util/concurrent/ConcurrentNavigableMap",
        "<TK;TV;>;",
        "Ljava/lang/Cloneable;",
        "Ljava/io/Serializable;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = -0x6a1fe183320cb959L


# instance fields
.field private transient entrySetView:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/util/Map$Entry",
            "<TK;TV;>;>;"
        }
    .end annotation
.end field

.field private final hi:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TK;"
        }
    .end annotation
.end field

.field private final hiInclusive:Z

.field private final isDescending:Z

.field private transient keySetView:Ljava/util/concurrent/ConcurrentSkipListMap$KeySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentSkipListMap$KeySet",
            "<TK;>;"
        }
    .end annotation
.end field

.field private final lo:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TK;"
        }
    .end annotation
.end field

.field private final loInclusive:Z

.field private final m:Ljava/util/concurrent/ConcurrentSkipListMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentSkipListMap",
            "<TK;TV;>;"
        }
    .end annotation
.end field

.field private transient valuesView:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection",
            "<TV;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Ljava/util/concurrent/ConcurrentSkipListMap;Ljava/lang/Object;ZLjava/lang/Object;ZZ)V
    .locals 2
    .param p3, "fromInclusive"    # Z
    .param p5, "toInclusive"    # Z
    .param p6, "isDescending"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/ConcurrentSkipListMap",
            "<TK;TV;>;TK;ZTK;ZZ)V"
        }
    .end annotation

    .prologue
    .line 2474
    .local p0, "this":Ljava/util/concurrent/ConcurrentSkipListMap$SubMap;, "Ljava/util/concurrent/ConcurrentSkipListMap$SubMap<TK;TV;>;"
    .local p1, "map":Ljava/util/concurrent/ConcurrentSkipListMap;, "Ljava/util/concurrent/ConcurrentSkipListMap<TK;TV;>;"
    .local p2, "fromKey":Ljava/lang/Object;, "TK;"
    .local p4, "toKey":Ljava/lang/Object;, "TK;"
    invoke-direct {p0}, Ljava/util/AbstractMap;-><init>()V

    .line 2475
    if-eqz p2, :cond_0

    if-eqz p4, :cond_0

    invoke-virtual {p1, p2, p4}, Ljava/util/concurrent/ConcurrentSkipListMap;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v0

    if-lez v0, :cond_0

    .line 2477
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "inconsistent range"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2478
    :cond_0
    iput-object p1, p0, Ljava/util/concurrent/ConcurrentSkipListMap$SubMap;->m:Ljava/util/concurrent/ConcurrentSkipListMap;

    .line 2479
    iput-object p2, p0, Ljava/util/concurrent/ConcurrentSkipListMap$SubMap;->lo:Ljava/lang/Object;

    .line 2480
    iput-object p4, p0, Ljava/util/concurrent/ConcurrentSkipListMap$SubMap;->hi:Ljava/lang/Object;

    .line 2481
    iput-boolean p3, p0, Ljava/util/concurrent/ConcurrentSkipListMap$SubMap;->loInclusive:Z

    .line 2482
    iput-boolean p5, p0, Ljava/util/concurrent/ConcurrentSkipListMap$SubMap;->hiInclusive:Z

    .line 2483
    iput-boolean p6, p0, Ljava/util/concurrent/ConcurrentSkipListMap$SubMap;->isDescending:Z

    .line 2484
    return-void
.end method

.method static synthetic access$100(Ljava/util/concurrent/ConcurrentSkipListMap$SubMap;)Z
    .locals 1
    .param p0, "x0"    # Ljava/util/concurrent/ConcurrentSkipListMap$SubMap;

    .prologue
    .line 2445
    iget-boolean v0, p0, Ljava/util/concurrent/ConcurrentSkipListMap$SubMap;->isDescending:Z

    return v0
.end method

.method static synthetic access$200(Ljava/util/concurrent/ConcurrentSkipListMap$SubMap;)Ljava/util/concurrent/ConcurrentSkipListMap$Node;
    .locals 1
    .param p0, "x0"    # Ljava/util/concurrent/ConcurrentSkipListMap$SubMap;

    .prologue
    .line 2445
    invoke-direct {p0}, Ljava/util/concurrent/ConcurrentSkipListMap$SubMap;->hiNode()Ljava/util/concurrent/ConcurrentSkipListMap$Node;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$300(Ljava/util/concurrent/ConcurrentSkipListMap$SubMap;)Ljava/util/concurrent/ConcurrentSkipListMap$Node;
    .locals 1
    .param p0, "x0"    # Ljava/util/concurrent/ConcurrentSkipListMap$SubMap;

    .prologue
    .line 2445
    invoke-direct {p0}, Ljava/util/concurrent/ConcurrentSkipListMap$SubMap;->loNode()Ljava/util/concurrent/ConcurrentSkipListMap$Node;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$400(Ljava/util/concurrent/ConcurrentSkipListMap$SubMap;Ljava/lang/Object;)Z
    .locals 1
    .param p0, "x0"    # Ljava/util/concurrent/ConcurrentSkipListMap$SubMap;
    .param p1, "x1"    # Ljava/lang/Object;

    .prologue
    .line 2445
    invoke-direct {p0, p1}, Ljava/util/concurrent/ConcurrentSkipListMap$SubMap;->inBounds(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$500(Ljava/util/concurrent/ConcurrentSkipListMap$SubMap;Ljava/lang/Object;)Z
    .locals 1
    .param p0, "x0"    # Ljava/util/concurrent/ConcurrentSkipListMap$SubMap;
    .param p1, "x1"    # Ljava/lang/Object;

    .prologue
    .line 2445
    invoke-direct {p0, p1}, Ljava/util/concurrent/ConcurrentSkipListMap$SubMap;->tooHigh(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$600(Ljava/util/concurrent/ConcurrentSkipListMap$SubMap;)Ljava/util/concurrent/ConcurrentSkipListMap;
    .locals 1
    .param p0, "x0"    # Ljava/util/concurrent/ConcurrentSkipListMap$SubMap;

    .prologue
    .line 2445
    iget-object v0, p0, Ljava/util/concurrent/ConcurrentSkipListMap$SubMap;->m:Ljava/util/concurrent/ConcurrentSkipListMap;

    return-object v0
.end method

.method static synthetic access$700(Ljava/util/concurrent/ConcurrentSkipListMap$SubMap;Ljava/lang/Object;)Z
    .locals 1
    .param p0, "x0"    # Ljava/util/concurrent/ConcurrentSkipListMap$SubMap;
    .param p1, "x1"    # Ljava/lang/Object;

    .prologue
    .line 2445
    invoke-direct {p0, p1}, Ljava/util/concurrent/ConcurrentSkipListMap$SubMap;->tooLow(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method private checkKeyBounds(Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    .line 2511
    .local p0, "this":Ljava/util/concurrent/ConcurrentSkipListMap$SubMap;, "Ljava/util/concurrent/ConcurrentSkipListMap$SubMap<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    if-nez p1, :cond_0

    .line 2512
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 2513
    :cond_0
    invoke-direct {p0, p1}, Ljava/util/concurrent/ConcurrentSkipListMap$SubMap;->inBounds(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 2514
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "key out of range"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2515
    :cond_1
    return-void
.end method

.method private getNearEntry(Ljava/lang/Object;I)Ljava/util/Map$Entry;
    .locals 5
    .param p2, "rel"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;I)",
            "Ljava/util/Map$Entry",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .local p0, "this":Ljava/util/concurrent/ConcurrentSkipListMap$SubMap;, "Ljava/util/concurrent/ConcurrentSkipListMap$SubMap<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    const/4 v3, 0x0

    .line 2638
    iget-boolean v4, p0, Ljava/util/concurrent/ConcurrentSkipListMap$SubMap;->isDescending:Z

    if-eqz v4, :cond_0

    .line 2639
    and-int/lit8 v4, p2, 0x2

    if-nez v4, :cond_2

    .line 2640
    or-int/lit8 p2, p2, 0x2

    .line 2644
    :cond_0
    :goto_0
    invoke-direct {p0, p1}, Ljava/util/concurrent/ConcurrentSkipListMap$SubMap;->tooLow(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 2645
    and-int/lit8 v4, p2, 0x2

    if-eqz v4, :cond_3

    .line 2655
    :cond_1
    :goto_1
    return-object v3

    .line 2642
    :cond_2
    and-int/lit8 p2, p2, -0x3

    goto :goto_0

    .line 2645
    :cond_3
    invoke-direct {p0}, Ljava/util/concurrent/ConcurrentSkipListMap$SubMap;->lowestEntry()Ljava/util/Map$Entry;

    move-result-object v3

    goto :goto_1

    .line 2646
    :cond_4
    invoke-direct {p0, p1}, Ljava/util/concurrent/ConcurrentSkipListMap$SubMap;->tooHigh(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 2647
    and-int/lit8 v4, p2, 0x2

    if-eqz v4, :cond_1

    invoke-direct {p0}, Ljava/util/concurrent/ConcurrentSkipListMap$SubMap;->highestEntry()Ljava/util/Map$Entry;

    move-result-object v3

    goto :goto_1

    .line 2649
    :cond_5
    iget-object v4, p0, Ljava/util/concurrent/ConcurrentSkipListMap$SubMap;->m:Ljava/util/concurrent/ConcurrentSkipListMap;

    invoke-virtual {v4, p1, p2}, Ljava/util/concurrent/ConcurrentSkipListMap;->findNear(Ljava/lang/Object;I)Ljava/util/concurrent/ConcurrentSkipListMap$Node;

    move-result-object v1

    .line 2650
    .local v1, "n":Ljava/util/concurrent/ConcurrentSkipListMap$Node;, "Ljava/util/concurrent/ConcurrentSkipListMap$Node<TK;TV;>;"
    if-eqz v1, :cond_1

    iget-object v4, v1, Ljava/util/concurrent/ConcurrentSkipListMap$Node;->key:Ljava/lang/Object;

    invoke-direct {p0, v4}, Ljava/util/concurrent/ConcurrentSkipListMap$SubMap;->inBounds(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 2652
    iget-object v0, v1, Ljava/util/concurrent/ConcurrentSkipListMap$Node;->key:Ljava/lang/Object;

    .line 2653
    .local v0, "k":Ljava/lang/Object;, "TK;"
    invoke-virtual {v1}, Ljava/util/concurrent/ConcurrentSkipListMap$Node;->getValidValue()Ljava/lang/Object;

    move-result-object v2

    .line 2654
    .local v2, "v":Ljava/lang/Object;, "TV;"
    if-eqz v2, :cond_5

    .line 2655
    new-instance v3, Ljava/util/AbstractMap$SimpleImmutableEntry;

    invoke-direct {v3, v0, v2}, Ljava/util/AbstractMap$SimpleImmutableEntry;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_1
.end method

.method private getNearKey(Ljava/lang/Object;I)Ljava/lang/Object;
    .locals 6
    .param p2, "rel"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;I)TK;"
        }
    .end annotation

    .prologue
    .local p0, "this":Ljava/util/concurrent/ConcurrentSkipListMap$SubMap;, "Ljava/util/concurrent/ConcurrentSkipListMap$SubMap<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    const/4 v4, 0x0

    .line 2661
    iget-boolean v5, p0, Ljava/util/concurrent/ConcurrentSkipListMap$SubMap;->isDescending:Z

    if-eqz v5, :cond_0

    .line 2662
    and-int/lit8 v5, p2, 0x2

    if-nez v5, :cond_2

    .line 2663
    or-int/lit8 p2, p2, 0x2

    .line 2667
    :cond_0
    :goto_0
    invoke-direct {p0, p1}, Ljava/util/concurrent/ConcurrentSkipListMap$SubMap;->tooLow(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 2668
    and-int/lit8 v5, p2, 0x2

    if-nez v5, :cond_3

    .line 2669
    invoke-direct {p0}, Ljava/util/concurrent/ConcurrentSkipListMap$SubMap;->loNode()Ljava/util/concurrent/ConcurrentSkipListMap$Node;

    move-result-object v2

    .line 2670
    .local v2, "n":Ljava/util/concurrent/ConcurrentSkipListMap$Node;, "Ljava/util/concurrent/ConcurrentSkipListMap$Node<TK;TV;>;"
    invoke-direct {p0, v2}, Ljava/util/concurrent/ConcurrentSkipListMap$SubMap;->isBeforeEnd(Ljava/util/concurrent/ConcurrentSkipListMap$Node;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 2671
    iget-object v1, v2, Ljava/util/concurrent/ConcurrentSkipListMap$Node;->key:Ljava/lang/Object;

    .line 2693
    .end local v2    # "n":Ljava/util/concurrent/ConcurrentSkipListMap$Node;, "Ljava/util/concurrent/ConcurrentSkipListMap$Node<TK;TV;>;"
    :cond_1
    :goto_1
    return-object v1

    .line 2665
    :cond_2
    and-int/lit8 p2, p2, -0x3

    goto :goto_0

    :cond_3
    move-object v1, v4

    .line 2673
    goto :goto_1

    .line 2675
    :cond_4
    invoke-direct {p0, p1}, Ljava/util/concurrent/ConcurrentSkipListMap$SubMap;->tooHigh(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_6

    .line 2676
    and-int/lit8 v5, p2, 0x2

    if-eqz v5, :cond_5

    .line 2677
    invoke-direct {p0}, Ljava/util/concurrent/ConcurrentSkipListMap$SubMap;->hiNode()Ljava/util/concurrent/ConcurrentSkipListMap$Node;

    move-result-object v2

    .line 2678
    .restart local v2    # "n":Ljava/util/concurrent/ConcurrentSkipListMap$Node;, "Ljava/util/concurrent/ConcurrentSkipListMap$Node<TK;TV;>;"
    if-eqz v2, :cond_5

    .line 2679
    iget-object v1, v2, Ljava/util/concurrent/ConcurrentSkipListMap$Node;->key:Ljava/lang/Object;

    .line 2680
    .local v1, "last":Ljava/lang/Object;, "TK;"
    invoke-direct {p0, v1}, Ljava/util/concurrent/ConcurrentSkipListMap$SubMap;->inBounds(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1

    .end local v1    # "last":Ljava/lang/Object;, "TK;"
    .end local v2    # "n":Ljava/util/concurrent/ConcurrentSkipListMap$Node;, "Ljava/util/concurrent/ConcurrentSkipListMap$Node<TK;TV;>;"
    :cond_5
    move-object v1, v4

    .line 2684
    goto :goto_1

    .line 2687
    :cond_6
    iget-object v5, p0, Ljava/util/concurrent/ConcurrentSkipListMap$SubMap;->m:Ljava/util/concurrent/ConcurrentSkipListMap;

    invoke-virtual {v5, p1, p2}, Ljava/util/concurrent/ConcurrentSkipListMap;->findNear(Ljava/lang/Object;I)Ljava/util/concurrent/ConcurrentSkipListMap$Node;

    move-result-object v2

    .line 2688
    .restart local v2    # "n":Ljava/util/concurrent/ConcurrentSkipListMap$Node;, "Ljava/util/concurrent/ConcurrentSkipListMap$Node<TK;TV;>;"
    if-eqz v2, :cond_7

    iget-object v5, v2, Ljava/util/concurrent/ConcurrentSkipListMap$Node;->key:Ljava/lang/Object;

    invoke-direct {p0, v5}, Ljava/util/concurrent/ConcurrentSkipListMap$SubMap;->inBounds(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_8

    :cond_7
    move-object v1, v4

    .line 2689
    goto :goto_1

    .line 2690
    :cond_8
    iget-object v0, v2, Ljava/util/concurrent/ConcurrentSkipListMap$Node;->key:Ljava/lang/Object;

    .line 2691
    .local v0, "k":Ljava/lang/Object;, "TK;"
    invoke-virtual {v2}, Ljava/util/concurrent/ConcurrentSkipListMap$Node;->getValidValue()Ljava/lang/Object;

    move-result-object v3

    .line 2692
    .local v3, "v":Ljava/lang/Object;, "TV;"
    if-eqz v3, :cond_6

    move-object v1, v0

    .line 2693
    goto :goto_1
.end method

.method private hiNode()Ljava/util/concurrent/ConcurrentSkipListMap$Node;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/concurrent/ConcurrentSkipListMap$Node",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 2552
    .local p0, "this":Ljava/util/concurrent/ConcurrentSkipListMap$SubMap;, "Ljava/util/concurrent/ConcurrentSkipListMap$SubMap<TK;TV;>;"
    iget-object v0, p0, Ljava/util/concurrent/ConcurrentSkipListMap$SubMap;->hi:Ljava/lang/Object;

    if-nez v0, :cond_0

    .line 2553
    iget-object v0, p0, Ljava/util/concurrent/ConcurrentSkipListMap$SubMap;->m:Ljava/util/concurrent/ConcurrentSkipListMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentSkipListMap;->findLast()Ljava/util/concurrent/ConcurrentSkipListMap$Node;

    move-result-object v0

    .line 2557
    :goto_0
    return-object v0

    .line 2554
    :cond_0
    iget-boolean v0, p0, Ljava/util/concurrent/ConcurrentSkipListMap$SubMap;->hiInclusive:Z

    if-eqz v0, :cond_1

    .line 2555
    iget-object v0, p0, Ljava/util/concurrent/ConcurrentSkipListMap$SubMap;->m:Ljava/util/concurrent/ConcurrentSkipListMap;

    iget-object v1, p0, Ljava/util/concurrent/ConcurrentSkipListMap$SubMap;->hi:Ljava/lang/Object;

    const/4 v2, 0x3

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/ConcurrentSkipListMap;->findNear(Ljava/lang/Object;I)Ljava/util/concurrent/ConcurrentSkipListMap$Node;

    move-result-object v0

    goto :goto_0

    .line 2557
    :cond_1
    iget-object v0, p0, Ljava/util/concurrent/ConcurrentSkipListMap$SubMap;->m:Ljava/util/concurrent/ConcurrentSkipListMap;

    iget-object v1, p0, Ljava/util/concurrent/ConcurrentSkipListMap$SubMap;->hi:Ljava/lang/Object;

    const/4 v2, 0x2

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/ConcurrentSkipListMap;->findNear(Ljava/lang/Object;I)Ljava/util/concurrent/ConcurrentSkipListMap$Node;

    move-result-object v0

    goto :goto_0
.end method

.method private highestEntry()Ljava/util/Map$Entry;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map$Entry",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 2597
    .local p0, "this":Ljava/util/concurrent/ConcurrentSkipListMap$SubMap;, "Ljava/util/concurrent/ConcurrentSkipListMap$SubMap<TK;TV;>;"
    :cond_0
    invoke-direct {p0}, Ljava/util/concurrent/ConcurrentSkipListMap$SubMap;->hiNode()Ljava/util/concurrent/ConcurrentSkipListMap$Node;

    move-result-object v1

    .line 2598
    .local v1, "n":Ljava/util/concurrent/ConcurrentSkipListMap$Node;, "Ljava/util/concurrent/ConcurrentSkipListMap$Node<TK;TV;>;"
    if-eqz v1, :cond_1

    iget-object v2, v1, Ljava/util/concurrent/ConcurrentSkipListMap$Node;->key:Ljava/lang/Object;

    invoke-direct {p0, v2}, Ljava/util/concurrent/ConcurrentSkipListMap$SubMap;->inBounds(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 2599
    :cond_1
    const/4 v0, 0x0

    .line 2602
    :goto_0
    return-object v0

    .line 2600
    :cond_2
    invoke-virtual {v1}, Ljava/util/concurrent/ConcurrentSkipListMap$Node;->createSnapshot()Ljava/util/AbstractMap$SimpleImmutableEntry;

    move-result-object v0

    .line 2601
    .local v0, "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<TK;TV;>;"
    if-eqz v0, :cond_0

    goto :goto_0
.end method

.method private highestKey()Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TK;"
        }
    .end annotation

    .prologue
    .line 2575
    .local p0, "this":Ljava/util/concurrent/ConcurrentSkipListMap$SubMap;, "Ljava/util/concurrent/ConcurrentSkipListMap$SubMap<TK;TV;>;"
    invoke-direct {p0}, Ljava/util/concurrent/ConcurrentSkipListMap$SubMap;->hiNode()Ljava/util/concurrent/ConcurrentSkipListMap$Node;

    move-result-object v1

    .line 2576
    .local v1, "n":Ljava/util/concurrent/ConcurrentSkipListMap$Node;, "Ljava/util/concurrent/ConcurrentSkipListMap$Node<TK;TV;>;"
    if-eqz v1, :cond_0

    .line 2577
    iget-object v0, v1, Ljava/util/concurrent/ConcurrentSkipListMap$Node;->key:Ljava/lang/Object;

    .line 2578
    .local v0, "last":Ljava/lang/Object;, "TK;"
    invoke-direct {p0, v0}, Ljava/util/concurrent/ConcurrentSkipListMap$SubMap;->inBounds(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 2579
    return-object v0

    .line 2581
    .end local v0    # "last":Ljava/lang/Object;, "TK;"
    :cond_0
    new-instance v2, Ljava/util/NoSuchElementException;

    invoke-direct {v2}, Ljava/util/NoSuchElementException;-><init>()V

    throw v2
.end method

.method private inBounds(Ljava/lang/Object;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)Z"
        }
    .end annotation

    .prologue
    .line 2507
    .local p0, "this":Ljava/util/concurrent/ConcurrentSkipListMap$SubMap;, "Ljava/util/concurrent/ConcurrentSkipListMap$SubMap<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    invoke-direct {p0, p1}, Ljava/util/concurrent/ConcurrentSkipListMap$SubMap;->tooLow(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0, p1}, Ljava/util/concurrent/ConcurrentSkipListMap$SubMap;->tooHigh(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isBeforeEnd(Ljava/util/concurrent/ConcurrentSkipListMap$Node;)Z
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/ConcurrentSkipListMap$Node",
            "<TK;TV;>;)Z"
        }
    .end annotation

    .prologue
    .local p0, "this":Ljava/util/concurrent/ConcurrentSkipListMap$SubMap;, "Ljava/util/concurrent/ConcurrentSkipListMap$SubMap<TK;TV;>;"
    .local p1, "n":Ljava/util/concurrent/ConcurrentSkipListMap$Node;, "Ljava/util/concurrent/ConcurrentSkipListMap$Node<TK;TV;>;"
    const/4 v2, 0x0

    const/4 v3, 0x1

    .line 2521
    if-nez p1, :cond_1

    .line 2531
    :cond_0
    :goto_0
    return v2

    .line 2523
    :cond_1
    iget-object v4, p0, Ljava/util/concurrent/ConcurrentSkipListMap$SubMap;->hi:Ljava/lang/Object;

    if-nez v4, :cond_2

    move v2, v3

    .line 2524
    goto :goto_0

    .line 2525
    :cond_2
    iget-object v1, p1, Ljava/util/concurrent/ConcurrentSkipListMap$Node;->key:Ljava/lang/Object;

    .line 2526
    .local v1, "k":Ljava/lang/Object;, "TK;"
    if-nez v1, :cond_3

    move v2, v3

    .line 2527
    goto :goto_0

    .line 2528
    :cond_3
    iget-object v4, p0, Ljava/util/concurrent/ConcurrentSkipListMap$SubMap;->m:Ljava/util/concurrent/ConcurrentSkipListMap;

    iget-object v5, p0, Ljava/util/concurrent/ConcurrentSkipListMap$SubMap;->hi:Ljava/lang/Object;

    invoke-virtual {v4, v1, v5}, Ljava/util/concurrent/ConcurrentSkipListMap;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v0

    .line 2529
    .local v0, "c":I
    if-gtz v0, :cond_0

    if-nez v0, :cond_4

    iget-boolean v4, p0, Ljava/util/concurrent/ConcurrentSkipListMap$SubMap;->hiInclusive:Z

    if-eqz v4, :cond_0

    :cond_4
    move v2, v3

    .line 2531
    goto :goto_0
.end method

.method private loNode()Ljava/util/concurrent/ConcurrentSkipListMap$Node;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/concurrent/ConcurrentSkipListMap$Node",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 2539
    .local p0, "this":Ljava/util/concurrent/ConcurrentSkipListMap$SubMap;, "Ljava/util/concurrent/ConcurrentSkipListMap$SubMap<TK;TV;>;"
    iget-object v0, p0, Ljava/util/concurrent/ConcurrentSkipListMap$SubMap;->lo:Ljava/lang/Object;

    if-nez v0, :cond_0

    .line 2540
    iget-object v0, p0, Ljava/util/concurrent/ConcurrentSkipListMap$SubMap;->m:Ljava/util/concurrent/ConcurrentSkipListMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentSkipListMap;->findFirst()Ljava/util/concurrent/ConcurrentSkipListMap$Node;

    move-result-object v0

    .line 2544
    :goto_0
    return-object v0

    .line 2541
    :cond_0
    iget-boolean v0, p0, Ljava/util/concurrent/ConcurrentSkipListMap$SubMap;->loInclusive:Z

    if-eqz v0, :cond_1

    .line 2542
    iget-object v0, p0, Ljava/util/concurrent/ConcurrentSkipListMap$SubMap;->m:Ljava/util/concurrent/ConcurrentSkipListMap;

    iget-object v1, p0, Ljava/util/concurrent/ConcurrentSkipListMap$SubMap;->lo:Ljava/lang/Object;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/ConcurrentSkipListMap;->findNear(Ljava/lang/Object;I)Ljava/util/concurrent/ConcurrentSkipListMap$Node;

    move-result-object v0

    goto :goto_0

    .line 2544
    :cond_1
    iget-object v0, p0, Ljava/util/concurrent/ConcurrentSkipListMap$SubMap;->m:Ljava/util/concurrent/ConcurrentSkipListMap;

    iget-object v1, p0, Ljava/util/concurrent/ConcurrentSkipListMap$SubMap;->lo:Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/ConcurrentSkipListMap;->findNear(Ljava/lang/Object;I)Ljava/util/concurrent/ConcurrentSkipListMap$Node;

    move-result-object v0

    goto :goto_0
.end method

.method private lowestEntry()Ljava/util/Map$Entry;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map$Entry",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 2586
    .local p0, "this":Ljava/util/concurrent/ConcurrentSkipListMap$SubMap;, "Ljava/util/concurrent/ConcurrentSkipListMap$SubMap<TK;TV;>;"
    :cond_0
    invoke-direct {p0}, Ljava/util/concurrent/ConcurrentSkipListMap$SubMap;->loNode()Ljava/util/concurrent/ConcurrentSkipListMap$Node;

    move-result-object v1

    .line 2587
    .local v1, "n":Ljava/util/concurrent/ConcurrentSkipListMap$Node;, "Ljava/util/concurrent/ConcurrentSkipListMap$Node<TK;TV;>;"
    invoke-direct {p0, v1}, Ljava/util/concurrent/ConcurrentSkipListMap$SubMap;->isBeforeEnd(Ljava/util/concurrent/ConcurrentSkipListMap$Node;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 2588
    const/4 v0, 0x0

    .line 2591
    :goto_0
    return-object v0

    .line 2589
    :cond_1
    invoke-virtual {v1}, Ljava/util/concurrent/ConcurrentSkipListMap$Node;->createSnapshot()Ljava/util/AbstractMap$SimpleImmutableEntry;

    move-result-object v0

    .line 2590
    .local v0, "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<TK;TV;>;"
    if-eqz v0, :cond_0

    goto :goto_0
.end method

.method private lowestKey()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TK;"
        }
    .end annotation

    .prologue
    .line 2564
    .local p0, "this":Ljava/util/concurrent/ConcurrentSkipListMap$SubMap;, "Ljava/util/concurrent/ConcurrentSkipListMap$SubMap<TK;TV;>;"
    invoke-direct {p0}, Ljava/util/concurrent/ConcurrentSkipListMap$SubMap;->loNode()Ljava/util/concurrent/ConcurrentSkipListMap$Node;

    move-result-object v0

    .line 2565
    .local v0, "n":Ljava/util/concurrent/ConcurrentSkipListMap$Node;, "Ljava/util/concurrent/ConcurrentSkipListMap$Node<TK;TV;>;"
    invoke-direct {p0, v0}, Ljava/util/concurrent/ConcurrentSkipListMap$SubMap;->isBeforeEnd(Ljava/util/concurrent/ConcurrentSkipListMap$Node;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2566
    iget-object v1, v0, Ljava/util/concurrent/ConcurrentSkipListMap$Node;->key:Ljava/lang/Object;

    return-object v1

    .line 2568
    :cond_0
    new-instance v1, Ljava/util/NoSuchElementException;

    invoke-direct {v1}, Ljava/util/NoSuchElementException;-><init>()V

    throw v1
.end method

.method private newSubMap(Ljava/lang/Object;ZLjava/lang/Object;Z)Ljava/util/concurrent/ConcurrentSkipListMap$SubMap;
    .locals 10
    .param p2, "fromInclusive"    # Z
    .param p4, "toInclusive"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;ZTK;Z)",
            "Ljava/util/concurrent/ConcurrentSkipListMap$SubMap",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 2798
    .local p0, "this":Ljava/util/concurrent/ConcurrentSkipListMap$SubMap;, "Ljava/util/concurrent/ConcurrentSkipListMap$SubMap<TK;TV;>;"
    .local p1, "fromKey":Ljava/lang/Object;, "TK;"
    .local p3, "toKey":Ljava/lang/Object;, "TK;"
    iget-boolean v0, p0, Ljava/util/concurrent/ConcurrentSkipListMap$SubMap;->isDescending:Z

    if-eqz v0, :cond_0

    .line 2799
    move-object v9, p1

    .line 2800
    .local v9, "tk":Ljava/lang/Object;, "TK;"
    move-object p1, p3

    .line 2801
    move-object p3, v9

    .line 2802
    move v8, p2

    .line 2803
    .local v8, "ti":Z
    move p2, p4

    .line 2804
    move p4, v8

    .line 2806
    .end local v8    # "ti":Z
    .end local v9    # "tk":Ljava/lang/Object;, "TK;"
    :cond_0
    iget-object v0, p0, Ljava/util/concurrent/ConcurrentSkipListMap$SubMap;->lo:Ljava/lang/Object;

    if-eqz v0, :cond_1

    .line 2807
    if-nez p1, :cond_3

    .line 2808
    iget-object p1, p0, Ljava/util/concurrent/ConcurrentSkipListMap$SubMap;->lo:Ljava/lang/Object;

    .line 2809
    iget-boolean p2, p0, Ljava/util/concurrent/ConcurrentSkipListMap$SubMap;->loInclusive:Z

    .line 2817
    :cond_1
    iget-object v0, p0, Ljava/util/concurrent/ConcurrentSkipListMap$SubMap;->hi:Ljava/lang/Object;

    if-eqz v0, :cond_2

    .line 2818
    if-nez p3, :cond_5

    .line 2819
    iget-object p3, p0, Ljava/util/concurrent/ConcurrentSkipListMap$SubMap;->hi:Ljava/lang/Object;

    .line 2820
    iget-boolean p4, p0, Ljava/util/concurrent/ConcurrentSkipListMap$SubMap;->hiInclusive:Z

    .line 2828
    :cond_2
    new-instance v0, Ljava/util/concurrent/ConcurrentSkipListMap$SubMap;

    iget-object v1, p0, Ljava/util/concurrent/ConcurrentSkipListMap$SubMap;->m:Ljava/util/concurrent/ConcurrentSkipListMap;

    iget-boolean v6, p0, Ljava/util/concurrent/ConcurrentSkipListMap$SubMap;->isDescending:Z

    move-object v2, p1

    move v3, p2

    move-object v4, p3

    move v5, p4

    invoke-direct/range {v0 .. v6}, Ljava/util/concurrent/ConcurrentSkipListMap$SubMap;-><init>(Ljava/util/concurrent/ConcurrentSkipListMap;Ljava/lang/Object;ZLjava/lang/Object;ZZ)V

    return-object v0

    .line 2812
    :cond_3
    iget-object v0, p0, Ljava/util/concurrent/ConcurrentSkipListMap$SubMap;->m:Ljava/util/concurrent/ConcurrentSkipListMap;

    iget-object v1, p0, Ljava/util/concurrent/ConcurrentSkipListMap$SubMap;->lo:Ljava/lang/Object;

    invoke-virtual {v0, p1, v1}, Ljava/util/concurrent/ConcurrentSkipListMap;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v7

    .line 2813
    .local v7, "c":I
    if-ltz v7, :cond_4

    if-nez v7, :cond_1

    iget-boolean v0, p0, Ljava/util/concurrent/ConcurrentSkipListMap$SubMap;->loInclusive:Z

    if-nez v0, :cond_1

    if-eqz p2, :cond_1

    .line 2814
    :cond_4
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "key out of range"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2823
    .end local v7    # "c":I
    :cond_5
    iget-object v0, p0, Ljava/util/concurrent/ConcurrentSkipListMap$SubMap;->m:Ljava/util/concurrent/ConcurrentSkipListMap;

    iget-object v1, p0, Ljava/util/concurrent/ConcurrentSkipListMap$SubMap;->hi:Ljava/lang/Object;

    invoke-virtual {v0, p3, v1}, Ljava/util/concurrent/ConcurrentSkipListMap;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v7

    .line 2824
    .restart local v7    # "c":I
    if-gtz v7, :cond_6

    if-nez v7, :cond_2

    iget-boolean v0, p0, Ljava/util/concurrent/ConcurrentSkipListMap$SubMap;->hiInclusive:Z

    if-nez v0, :cond_2

    if-eqz p4, :cond_2

    .line 2825
    :cond_6
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "key out of range"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private removeHighest()Ljava/util/Map$Entry;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map$Entry",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .local p0, "this":Ljava/util/concurrent/ConcurrentSkipListMap$SubMap;, "Ljava/util/concurrent/ConcurrentSkipListMap$SubMap<TK;TV;>;"
    const/4 v3, 0x0

    .line 2622
    :cond_0
    invoke-direct {p0}, Ljava/util/concurrent/ConcurrentSkipListMap$SubMap;->hiNode()Ljava/util/concurrent/ConcurrentSkipListMap$Node;

    move-result-object v1

    .line 2623
    .local v1, "n":Ljava/util/concurrent/ConcurrentSkipListMap$Node;, "Ljava/util/concurrent/ConcurrentSkipListMap$Node<TK;TV;>;"
    if-nez v1, :cond_2

    .line 2630
    :cond_1
    :goto_0
    return-object v3

    .line 2625
    :cond_2
    iget-object v0, v1, Ljava/util/concurrent/ConcurrentSkipListMap$Node;->key:Ljava/lang/Object;

    .line 2626
    .local v0, "k":Ljava/lang/Object;, "TK;"
    invoke-direct {p0, v0}, Ljava/util/concurrent/ConcurrentSkipListMap$SubMap;->inBounds(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 2628
    iget-object v4, p0, Ljava/util/concurrent/ConcurrentSkipListMap$SubMap;->m:Ljava/util/concurrent/ConcurrentSkipListMap;

    invoke-virtual {v4, v0, v3}, Ljava/util/concurrent/ConcurrentSkipListMap;->doRemove(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 2629
    .local v2, "v":Ljava/lang/Object;, "TV;"
    if-eqz v2, :cond_0

    .line 2630
    new-instance v3, Ljava/util/AbstractMap$SimpleImmutableEntry;

    invoke-direct {v3, v0, v2}, Ljava/util/AbstractMap$SimpleImmutableEntry;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_0
.end method

.method private removeLowest()Ljava/util/Map$Entry;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map$Entry",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .local p0, "this":Ljava/util/concurrent/ConcurrentSkipListMap$SubMap;, "Ljava/util/concurrent/ConcurrentSkipListMap$SubMap<TK;TV;>;"
    const/4 v3, 0x0

    .line 2608
    :cond_0
    invoke-direct {p0}, Ljava/util/concurrent/ConcurrentSkipListMap$SubMap;->loNode()Ljava/util/concurrent/ConcurrentSkipListMap$Node;

    move-result-object v1

    .line 2609
    .local v1, "n":Ljava/util/concurrent/ConcurrentSkipListMap$Node;, "Ljava/util/concurrent/ConcurrentSkipListMap$Node<TK;TV;>;"
    if-nez v1, :cond_2

    .line 2616
    :cond_1
    :goto_0
    return-object v3

    .line 2611
    :cond_2
    iget-object v0, v1, Ljava/util/concurrent/ConcurrentSkipListMap$Node;->key:Ljava/lang/Object;

    .line 2612
    .local v0, "k":Ljava/lang/Object;, "TK;"
    invoke-direct {p0, v0}, Ljava/util/concurrent/ConcurrentSkipListMap$SubMap;->inBounds(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 2614
    iget-object v4, p0, Ljava/util/concurrent/ConcurrentSkipListMap$SubMap;->m:Ljava/util/concurrent/ConcurrentSkipListMap;

    invoke-virtual {v4, v0, v3}, Ljava/util/concurrent/ConcurrentSkipListMap;->doRemove(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 2615
    .local v2, "v":Ljava/lang/Object;, "TV;"
    if-eqz v2, :cond_0

    .line 2616
    new-instance v3, Ljava/util/AbstractMap$SimpleImmutableEntry;

    invoke-direct {v3, v0, v2}, Ljava/util/AbstractMap$SimpleImmutableEntry;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_0
.end method

.method private tooHigh(Ljava/lang/Object;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)Z"
        }
    .end annotation

    .prologue
    .line 2498
    .local p0, "this":Ljava/util/concurrent/ConcurrentSkipListMap$SubMap;, "Ljava/util/concurrent/ConcurrentSkipListMap$SubMap<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    iget-object v1, p0, Ljava/util/concurrent/ConcurrentSkipListMap$SubMap;->hi:Ljava/lang/Object;

    if-eqz v1, :cond_1

    .line 2499
    iget-object v1, p0, Ljava/util/concurrent/ConcurrentSkipListMap$SubMap;->m:Ljava/util/concurrent/ConcurrentSkipListMap;

    iget-object v2, p0, Ljava/util/concurrent/ConcurrentSkipListMap$SubMap;->hi:Ljava/lang/Object;

    invoke-virtual {v1, p1, v2}, Ljava/util/concurrent/ConcurrentSkipListMap;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v0

    .line 2500
    .local v0, "c":I
    if-gtz v0, :cond_0

    if-nez v0, :cond_1

    iget-boolean v1, p0, Ljava/util/concurrent/ConcurrentSkipListMap$SubMap;->hiInclusive:Z

    if-nez v1, :cond_1

    .line 2501
    :cond_0
    const/4 v1, 0x1

    .line 2503
    .end local v0    # "c":I
    :goto_0
    return v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private tooLow(Ljava/lang/Object;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)Z"
        }
    .end annotation

    .prologue
    .line 2489
    .local p0, "this":Ljava/util/concurrent/ConcurrentSkipListMap$SubMap;, "Ljava/util/concurrent/ConcurrentSkipListMap$SubMap<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    iget-object v1, p0, Ljava/util/concurrent/ConcurrentSkipListMap$SubMap;->lo:Ljava/lang/Object;

    if-eqz v1, :cond_1

    .line 2490
    iget-object v1, p0, Ljava/util/concurrent/ConcurrentSkipListMap$SubMap;->m:Ljava/util/concurrent/ConcurrentSkipListMap;

    iget-object v2, p0, Ljava/util/concurrent/ConcurrentSkipListMap$SubMap;->lo:Ljava/lang/Object;

    invoke-virtual {v1, p1, v2}, Ljava/util/concurrent/ConcurrentSkipListMap;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v0

    .line 2491
    .local v0, "c":I
    if-ltz v0, :cond_0

    if-nez v0, :cond_1

    iget-boolean v1, p0, Ljava/util/concurrent/ConcurrentSkipListMap$SubMap;->loInclusive:Z

    if-nez v1, :cond_1

    .line 2492
    :cond_0
    const/4 v1, 0x1

    .line 2494
    .end local v0    # "c":I
    :goto_0
    return v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method


# virtual methods
.method public ceilingEntry(Ljava/lang/Object;)Ljava/util/Map$Entry;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)",
            "Ljava/util/Map$Entry",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 2875
    .local p0, "this":Ljava/util/concurrent/ConcurrentSkipListMap$SubMap;, "Ljava/util/concurrent/ConcurrentSkipListMap$SubMap<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Ljava/util/concurrent/ConcurrentSkipListMap$SubMap;->getNearEntry(Ljava/lang/Object;I)Ljava/util/Map$Entry;

    move-result-object v0

    return-object v0
.end method

.method public ceilingKey(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)TK;"
        }
    .end annotation

    .prologue
    .line 2879
    .local p0, "this":Ljava/util/concurrent/ConcurrentSkipListMap$SubMap;, "Ljava/util/concurrent/ConcurrentSkipListMap$SubMap<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Ljava/util/concurrent/ConcurrentSkipListMap$SubMap;->getNearKey(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public clear()V
    .locals 3

    .prologue
    .line 2750
    .local p0, "this":Ljava/util/concurrent/ConcurrentSkipListMap$SubMap;, "Ljava/util/concurrent/ConcurrentSkipListMap$SubMap<TK;TV;>;"
    invoke-direct {p0}, Ljava/util/concurrent/ConcurrentSkipListMap$SubMap;->loNode()Ljava/util/concurrent/ConcurrentSkipListMap$Node;

    move-result-object v0

    .line 2751
    .local v0, "n":Ljava/util/concurrent/ConcurrentSkipListMap$Node;, "Ljava/util/concurrent/ConcurrentSkipListMap$Node<TK;TV;>;"
    :goto_0
    invoke-direct {p0, v0}, Ljava/util/concurrent/ConcurrentSkipListMap$SubMap;->isBeforeEnd(Ljava/util/concurrent/ConcurrentSkipListMap$Node;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 2753
    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentSkipListMap$Node;->getValidValue()Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 2754
    iget-object v1, p0, Ljava/util/concurrent/ConcurrentSkipListMap$SubMap;->m:Ljava/util/concurrent/ConcurrentSkipListMap;

    iget-object v2, v0, Ljava/util/concurrent/ConcurrentSkipListMap$Node;->key:Ljava/lang/Object;

    invoke-virtual {v1, v2}, Ljava/util/concurrent/ConcurrentSkipListMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2752
    :cond_0
    iget-object v0, v0, Ljava/util/concurrent/ConcurrentSkipListMap$Node;->next:Ljava/util/concurrent/ConcurrentSkipListMap$Node;

    goto :goto_0

    .line 2756
    :cond_1
    return-void
.end method

.method public comparator()Ljava/util/Comparator;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Comparator",
            "<-TK;>;"
        }
    .end annotation

    .prologue
    .line 2783
    .local p0, "this":Ljava/util/concurrent/ConcurrentSkipListMap$SubMap;, "Ljava/util/concurrent/ConcurrentSkipListMap$SubMap<TK;TV;>;"
    iget-object v1, p0, Ljava/util/concurrent/ConcurrentSkipListMap$SubMap;->m:Ljava/util/concurrent/ConcurrentSkipListMap;

    invoke-virtual {v1}, Ljava/util/concurrent/ConcurrentSkipListMap;->comparator()Ljava/util/Comparator;

    move-result-object v0

    .line 2784
    .local v0, "cmp":Ljava/util/Comparator;, "Ljava/util/Comparator<-TK;>;"
    iget-boolean v1, p0, Ljava/util/concurrent/ConcurrentSkipListMap$SubMap;->isDescending:Z

    if-eqz v1, :cond_0

    .line 2785
    invoke-static {v0}, Ljava/util/Collections;->reverseOrder(Ljava/util/Comparator;)Ljava/util/Comparator;

    move-result-object v0

    .line 2787
    .end local v0    # "cmp":Ljava/util/Comparator;, "Ljava/util/Comparator<-TK;>;"
    :cond_0
    return-object v0
.end method

.method public containsKey(Ljava/lang/Object;)Z
    .locals 2
    .param p1, "key"    # Ljava/lang/Object;

    .prologue
    .line 2700
    .local p0, "this":Ljava/util/concurrent/ConcurrentSkipListMap$SubMap;, "Ljava/util/concurrent/ConcurrentSkipListMap$SubMap<TK;TV;>;"
    if-nez p1, :cond_0

    new-instance v1, Ljava/lang/NullPointerException;

    invoke-direct {v1}, Ljava/lang/NullPointerException;-><init>()V

    throw v1

    .line 2701
    :cond_0
    move-object v0, p1

    .line 2702
    .local v0, "k":Ljava/lang/Object;, "TK;"
    invoke-direct {p0, v0}, Ljava/util/concurrent/ConcurrentSkipListMap$SubMap;->inBounds(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Ljava/util/concurrent/ConcurrentSkipListMap$SubMap;->m:Ljava/util/concurrent/ConcurrentSkipListMap;

    invoke-virtual {v1, v0}, Ljava/util/concurrent/ConcurrentSkipListMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public containsValue(Ljava/lang/Object;)Z
    .locals 3
    .param p1, "value"    # Ljava/lang/Object;

    .prologue
    .line 2737
    .local p0, "this":Ljava/util/concurrent/ConcurrentSkipListMap$SubMap;, "Ljava/util/concurrent/ConcurrentSkipListMap$SubMap<TK;TV;>;"
    if-nez p1, :cond_0

    .line 2738
    new-instance v2, Ljava/lang/NullPointerException;

    invoke-direct {v2}, Ljava/lang/NullPointerException;-><init>()V

    throw v2

    .line 2739
    :cond_0
    invoke-direct {p0}, Ljava/util/concurrent/ConcurrentSkipListMap$SubMap;->loNode()Ljava/util/concurrent/ConcurrentSkipListMap$Node;

    move-result-object v0

    .line 2740
    .local v0, "n":Ljava/util/concurrent/ConcurrentSkipListMap$Node;, "Ljava/util/concurrent/ConcurrentSkipListMap$Node<TK;TV;>;"
    :goto_0
    invoke-direct {p0, v0}, Ljava/util/concurrent/ConcurrentSkipListMap$SubMap;->isBeforeEnd(Ljava/util/concurrent/ConcurrentSkipListMap$Node;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 2742
    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentSkipListMap$Node;->getValidValue()Ljava/lang/Object;

    move-result-object v1

    .line 2743
    .local v1, "v":Ljava/lang/Object;, "TV;"
    if-eqz v1, :cond_1

    invoke-virtual {p1, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 2744
    const/4 v2, 0x1

    .line 2746
    .end local v1    # "v":Ljava/lang/Object;, "TV;"
    :goto_1
    return v2

    .line 2741
    .restart local v1    # "v":Ljava/lang/Object;, "TV;"
    :cond_1
    iget-object v0, v0, Ljava/util/concurrent/ConcurrentSkipListMap$Node;->next:Ljava/util/concurrent/ConcurrentSkipListMap$Node;

    goto :goto_0

    .line 2746
    .end local v1    # "v":Ljava/lang/Object;, "TV;"
    :cond_2
    const/4 v2, 0x0

    goto :goto_1
.end method

.method public descendingKeySet()Ljava/util/NavigableSet;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/NavigableSet",
            "<TK;>;"
        }
    .end annotation

    .prologue
    .line 2953
    .local p0, "this":Ljava/util/concurrent/ConcurrentSkipListMap$SubMap;, "Ljava/util/concurrent/ConcurrentSkipListMap$SubMap<TK;TV;>;"
    invoke-virtual {p0}, Ljava/util/concurrent/ConcurrentSkipListMap$SubMap;->descendingMap()Ljava/util/concurrent/ConcurrentSkipListMap$SubMap;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentSkipListMap$SubMap;->navigableKeySet()Ljava/util/NavigableSet;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic descendingMap()Ljava/util/NavigableMap;
    .locals 1

    .prologue
    .line 2445
    .local p0, "this":Ljava/util/concurrent/ConcurrentSkipListMap$SubMap;, "Ljava/util/concurrent/ConcurrentSkipListMap$SubMap<TK;TV;>;"
    invoke-virtual {p0}, Ljava/util/concurrent/ConcurrentSkipListMap$SubMap;->descendingMap()Ljava/util/concurrent/ConcurrentSkipListMap$SubMap;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic descendingMap()Ljava/util/concurrent/ConcurrentNavigableMap;
    .locals 1

    .prologue
    .line 2445
    .local p0, "this":Ljava/util/concurrent/ConcurrentSkipListMap$SubMap;, "Ljava/util/concurrent/ConcurrentSkipListMap$SubMap<TK;TV;>;"
    invoke-virtual {p0}, Ljava/util/concurrent/ConcurrentSkipListMap$SubMap;->descendingMap()Ljava/util/concurrent/ConcurrentSkipListMap$SubMap;

    move-result-object v0

    return-object v0
.end method

.method public descendingMap()Ljava/util/concurrent/ConcurrentSkipListMap$SubMap;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/concurrent/ConcurrentSkipListMap$SubMap",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 2868
    .local p0, "this":Ljava/util/concurrent/ConcurrentSkipListMap$SubMap;, "Ljava/util/concurrent/ConcurrentSkipListMap$SubMap<TK;TV;>;"
    new-instance v0, Ljava/util/concurrent/ConcurrentSkipListMap$SubMap;

    iget-object v1, p0, Ljava/util/concurrent/ConcurrentSkipListMap$SubMap;->m:Ljava/util/concurrent/ConcurrentSkipListMap;

    iget-object v2, p0, Ljava/util/concurrent/ConcurrentSkipListMap$SubMap;->lo:Ljava/lang/Object;

    iget-boolean v3, p0, Ljava/util/concurrent/ConcurrentSkipListMap$SubMap;->loInclusive:Z

    iget-object v4, p0, Ljava/util/concurrent/ConcurrentSkipListMap$SubMap;->hi:Ljava/lang/Object;

    iget-boolean v5, p0, Ljava/util/concurrent/ConcurrentSkipListMap$SubMap;->hiInclusive:Z

    iget-boolean v6, p0, Ljava/util/concurrent/ConcurrentSkipListMap$SubMap;->isDescending:Z

    if-nez v6, :cond_0

    const/4 v6, 0x1

    :goto_0
    invoke-direct/range {v0 .. v6}, Ljava/util/concurrent/ConcurrentSkipListMap$SubMap;-><init>(Ljava/util/concurrent/ConcurrentSkipListMap;Ljava/lang/Object;ZLjava/lang/Object;ZZ)V

    return-object v0

    :cond_0
    const/4 v6, 0x0

    goto :goto_0
.end method

.method entryIterator()Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator",
            "<",
            "Ljava/util/Map$Entry",
            "<TK;TV;>;>;"
        }
    .end annotation

    .prologue
    .line 2965
    .local p0, "this":Ljava/util/concurrent/ConcurrentSkipListMap$SubMap;, "Ljava/util/concurrent/ConcurrentSkipListMap$SubMap<TK;TV;>;"
    new-instance v0, Ljava/util/concurrent/ConcurrentSkipListMap$SubMap$SubMapEntryIterator;

    invoke-direct {v0, p0}, Ljava/util/concurrent/ConcurrentSkipListMap$SubMap$SubMapEntryIterator;-><init>(Ljava/util/concurrent/ConcurrentSkipListMap$SubMap;)V

    return-object v0
.end method

.method public entrySet()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Ljava/util/Map$Entry",
            "<TK;TV;>;>;"
        }
    .end annotation

    .prologue
    .line 2948
    .local p0, "this":Ljava/util/concurrent/ConcurrentSkipListMap$SubMap;, "Ljava/util/concurrent/ConcurrentSkipListMap$SubMap<TK;TV;>;"
    iget-object v0, p0, Ljava/util/concurrent/ConcurrentSkipListMap$SubMap;->entrySetView:Ljava/util/Set;

    .line 2949
    .local v0, "es":Ljava/util/Set;, "Ljava/util/Set<Ljava/util/Map$Entry<TK;TV;>;>;"
    if-eqz v0, :cond_0

    .end local v0    # "es":Ljava/util/Set;, "Ljava/util/Set<Ljava/util/Map$Entry<TK;TV;>;>;"
    :goto_0
    return-object v0

    .restart local v0    # "es":Ljava/util/Set;, "Ljava/util/Set<Ljava/util/Map$Entry<TK;TV;>;>;"
    :cond_0
    new-instance v0, Ljava/util/concurrent/ConcurrentSkipListMap$EntrySet;

    .end local v0    # "es":Ljava/util/Set;, "Ljava/util/Set<Ljava/util/Map$Entry<TK;TV;>;>;"
    invoke-direct {v0, p0}, Ljava/util/concurrent/ConcurrentSkipListMap$EntrySet;-><init>(Ljava/util/concurrent/ConcurrentNavigableMap;)V

    iput-object v0, p0, Ljava/util/concurrent/ConcurrentSkipListMap$SubMap;->entrySetView:Ljava/util/Set;

    goto :goto_0
.end method

.method public firstEntry()Ljava/util/Map$Entry;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map$Entry",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 2915
    .local p0, "this":Ljava/util/concurrent/ConcurrentSkipListMap$SubMap;, "Ljava/util/concurrent/ConcurrentSkipListMap$SubMap<TK;TV;>;"
    iget-boolean v0, p0, Ljava/util/concurrent/ConcurrentSkipListMap$SubMap;->isDescending:Z

    if-eqz v0, :cond_0

    invoke-direct {p0}, Ljava/util/concurrent/ConcurrentSkipListMap$SubMap;->highestEntry()Ljava/util/Map$Entry;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    invoke-direct {p0}, Ljava/util/concurrent/ConcurrentSkipListMap$SubMap;->lowestEntry()Ljava/util/Map$Entry;

    move-result-object v0

    goto :goto_0
.end method

.method public firstKey()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TK;"
        }
    .end annotation

    .prologue
    .line 2907
    .local p0, "this":Ljava/util/concurrent/ConcurrentSkipListMap$SubMap;, "Ljava/util/concurrent/ConcurrentSkipListMap$SubMap<TK;TV;>;"
    iget-boolean v0, p0, Ljava/util/concurrent/ConcurrentSkipListMap$SubMap;->isDescending:Z

    if-eqz v0, :cond_0

    invoke-direct {p0}, Ljava/util/concurrent/ConcurrentSkipListMap$SubMap;->highestKey()Ljava/lang/Object;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    invoke-direct {p0}, Ljava/util/concurrent/ConcurrentSkipListMap$SubMap;->lowestKey()Ljava/lang/Object;

    move-result-object v0

    goto :goto_0
.end method

.method public floorEntry(Ljava/lang/Object;)Ljava/util/Map$Entry;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)",
            "Ljava/util/Map$Entry",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 2891
    .local p0, "this":Ljava/util/concurrent/ConcurrentSkipListMap$SubMap;, "Ljava/util/concurrent/ConcurrentSkipListMap$SubMap<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    const/4 v0, 0x3

    invoke-direct {p0, p1, v0}, Ljava/util/concurrent/ConcurrentSkipListMap$SubMap;->getNearEntry(Ljava/lang/Object;I)Ljava/util/Map$Entry;

    move-result-object v0

    return-object v0
.end method

.method public floorKey(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)TK;"
        }
    .end annotation

    .prologue
    .line 2895
    .local p0, "this":Ljava/util/concurrent/ConcurrentSkipListMap$SubMap;, "Ljava/util/concurrent/ConcurrentSkipListMap$SubMap<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    const/4 v0, 0x3

    invoke-direct {p0, p1, v0}, Ljava/util/concurrent/ConcurrentSkipListMap$SubMap;->getNearKey(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public get(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .param p1, "key"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")TV;"
        }
    .end annotation

    .prologue
    .line 2706
    .local p0, "this":Ljava/util/concurrent/ConcurrentSkipListMap$SubMap;, "Ljava/util/concurrent/ConcurrentSkipListMap$SubMap<TK;TV;>;"
    if-nez p1, :cond_0

    new-instance v1, Ljava/lang/NullPointerException;

    invoke-direct {v1}, Ljava/lang/NullPointerException;-><init>()V

    throw v1

    .line 2707
    :cond_0
    move-object v0, p1

    .line 2708
    .local v0, "k":Ljava/lang/Object;, "TK;"
    invoke-direct {p0, v0}, Ljava/util/concurrent/ConcurrentSkipListMap$SubMap;->inBounds(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    const/4 v1, 0x0

    :goto_0
    return-object v1

    :cond_1
    iget-object v1, p0, Ljava/util/concurrent/ConcurrentSkipListMap$SubMap;->m:Ljava/util/concurrent/ConcurrentSkipListMap;

    invoke-virtual {v1, v0}, Ljava/util/concurrent/ConcurrentSkipListMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    goto :goto_0
.end method

.method public bridge synthetic headMap(Ljava/lang/Object;Z)Ljava/util/NavigableMap;
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;
    .param p2, "x1"    # Z

    .prologue
    .line 2445
    .local p0, "this":Ljava/util/concurrent/ConcurrentSkipListMap$SubMap;, "Ljava/util/concurrent/ConcurrentSkipListMap$SubMap<TK;TV;>;"
    invoke-virtual {p0, p1, p2}, Ljava/util/concurrent/ConcurrentSkipListMap$SubMap;->headMap(Ljava/lang/Object;Z)Ljava/util/concurrent/ConcurrentSkipListMap$SubMap;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic headMap(Ljava/lang/Object;)Ljava/util/SortedMap;
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 2445
    .local p0, "this":Ljava/util/concurrent/ConcurrentSkipListMap$SubMap;, "Ljava/util/concurrent/ConcurrentSkipListMap$SubMap<TK;TV;>;"
    invoke-virtual {p0, p1}, Ljava/util/concurrent/ConcurrentSkipListMap$SubMap;->headMap(Ljava/lang/Object;)Ljava/util/concurrent/ConcurrentSkipListMap$SubMap;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic headMap(Ljava/lang/Object;)Ljava/util/concurrent/ConcurrentNavigableMap;
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 2445
    .local p0, "this":Ljava/util/concurrent/ConcurrentSkipListMap$SubMap;, "Ljava/util/concurrent/ConcurrentSkipListMap$SubMap<TK;TV;>;"
    invoke-virtual {p0, p1}, Ljava/util/concurrent/ConcurrentSkipListMap$SubMap;->headMap(Ljava/lang/Object;)Ljava/util/concurrent/ConcurrentSkipListMap$SubMap;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic headMap(Ljava/lang/Object;Z)Ljava/util/concurrent/ConcurrentNavigableMap;
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;
    .param p2, "x1"    # Z

    .prologue
    .line 2445
    .local p0, "this":Ljava/util/concurrent/ConcurrentSkipListMap$SubMap;, "Ljava/util/concurrent/ConcurrentSkipListMap$SubMap<TK;TV;>;"
    invoke-virtual {p0, p1, p2}, Ljava/util/concurrent/ConcurrentSkipListMap$SubMap;->headMap(Ljava/lang/Object;Z)Ljava/util/concurrent/ConcurrentSkipListMap$SubMap;

    move-result-object v0

    return-object v0
.end method

.method public headMap(Ljava/lang/Object;)Ljava/util/concurrent/ConcurrentSkipListMap$SubMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)",
            "Ljava/util/concurrent/ConcurrentSkipListMap$SubMap",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 2860
    .local p0, "this":Ljava/util/concurrent/ConcurrentSkipListMap$SubMap;, "Ljava/util/concurrent/ConcurrentSkipListMap$SubMap<TK;TV;>;"
    .local p1, "toKey":Ljava/lang/Object;, "TK;"
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Ljava/util/concurrent/ConcurrentSkipListMap$SubMap;->headMap(Ljava/lang/Object;Z)Ljava/util/concurrent/ConcurrentSkipListMap$SubMap;

    move-result-object v0

    return-object v0
.end method

.method public headMap(Ljava/lang/Object;Z)Ljava/util/concurrent/ConcurrentSkipListMap$SubMap;
    .locals 2
    .param p2, "inclusive"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;Z)",
            "Ljava/util/concurrent/ConcurrentSkipListMap$SubMap",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 2843
    .local p0, "this":Ljava/util/concurrent/ConcurrentSkipListMap$SubMap;, "Ljava/util/concurrent/ConcurrentSkipListMap$SubMap<TK;TV;>;"
    .local p1, "toKey":Ljava/lang/Object;, "TK;"
    if-nez p1, :cond_0

    .line 2844
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 2845
    :cond_0
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1, p1, p2}, Ljava/util/concurrent/ConcurrentSkipListMap$SubMap;->newSubMap(Ljava/lang/Object;ZLjava/lang/Object;Z)Ljava/util/concurrent/ConcurrentSkipListMap$SubMap;

    move-result-object v0

    return-object v0
.end method

.method public higherEntry(Ljava/lang/Object;)Ljava/util/Map$Entry;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)",
            "Ljava/util/Map$Entry",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 2899
    .local p0, "this":Ljava/util/concurrent/ConcurrentSkipListMap$SubMap;, "Ljava/util/concurrent/ConcurrentSkipListMap$SubMap<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Ljava/util/concurrent/ConcurrentSkipListMap$SubMap;->getNearEntry(Ljava/lang/Object;I)Ljava/util/Map$Entry;

    move-result-object v0

    return-object v0
.end method

.method public higherKey(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)TK;"
        }
    .end annotation

    .prologue
    .line 2903
    .local p0, "this":Ljava/util/concurrent/ConcurrentSkipListMap$SubMap;, "Ljava/util/concurrent/ConcurrentSkipListMap$SubMap<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Ljava/util/concurrent/ConcurrentSkipListMap$SubMap;->getNearKey(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public isEmpty()Z
    .locals 1

    .prologue
    .line 2733
    .local p0, "this":Ljava/util/concurrent/ConcurrentSkipListMap$SubMap;, "Ljava/util/concurrent/ConcurrentSkipListMap$SubMap<TK;TV;>;"
    invoke-direct {p0}, Ljava/util/concurrent/ConcurrentSkipListMap$SubMap;->loNode()Ljava/util/concurrent/ConcurrentSkipListMap$Node;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/util/concurrent/ConcurrentSkipListMap$SubMap;->isBeforeEnd(Ljava/util/concurrent/ConcurrentSkipListMap$Node;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method keyIterator()Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator",
            "<TK;>;"
        }
    .end annotation

    .prologue
    .line 2957
    .local p0, "this":Ljava/util/concurrent/ConcurrentSkipListMap$SubMap;, "Ljava/util/concurrent/ConcurrentSkipListMap$SubMap<TK;TV;>;"
    new-instance v0, Ljava/util/concurrent/ConcurrentSkipListMap$SubMap$SubMapKeyIterator;

    invoke-direct {v0, p0}, Ljava/util/concurrent/ConcurrentSkipListMap$SubMap$SubMapKeyIterator;-><init>(Ljava/util/concurrent/ConcurrentSkipListMap$SubMap;)V

    return-object v0
.end method

.method public keySet()Ljava/util/NavigableSet;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/NavigableSet",
            "<TK;>;"
        }
    .end annotation

    .prologue
    .line 2933
    .local p0, "this":Ljava/util/concurrent/ConcurrentSkipListMap$SubMap;, "Ljava/util/concurrent/ConcurrentSkipListMap$SubMap<TK;TV;>;"
    iget-object v0, p0, Ljava/util/concurrent/ConcurrentSkipListMap$SubMap;->keySetView:Ljava/util/concurrent/ConcurrentSkipListMap$KeySet;

    .line 2934
    .local v0, "ks":Ljava/util/concurrent/ConcurrentSkipListMap$KeySet;, "Ljava/util/concurrent/ConcurrentSkipListMap$KeySet<TK;>;"
    if-eqz v0, :cond_0

    .end local v0    # "ks":Ljava/util/concurrent/ConcurrentSkipListMap$KeySet;, "Ljava/util/concurrent/ConcurrentSkipListMap$KeySet<TK;>;"
    :goto_0
    return-object v0

    .restart local v0    # "ks":Ljava/util/concurrent/ConcurrentSkipListMap$KeySet;, "Ljava/util/concurrent/ConcurrentSkipListMap$KeySet<TK;>;"
    :cond_0
    new-instance v0, Ljava/util/concurrent/ConcurrentSkipListMap$KeySet;

    .end local v0    # "ks":Ljava/util/concurrent/ConcurrentSkipListMap$KeySet;, "Ljava/util/concurrent/ConcurrentSkipListMap$KeySet<TK;>;"
    invoke-direct {v0, p0}, Ljava/util/concurrent/ConcurrentSkipListMap$KeySet;-><init>(Ljava/util/concurrent/ConcurrentNavigableMap;)V

    iput-object v0, p0, Ljava/util/concurrent/ConcurrentSkipListMap$SubMap;->keySetView:Ljava/util/concurrent/ConcurrentSkipListMap$KeySet;

    goto :goto_0
.end method

.method public bridge synthetic keySet()Ljava/util/Set;
    .locals 1

    .prologue
    .line 2445
    .local p0, "this":Ljava/util/concurrent/ConcurrentSkipListMap$SubMap;, "Ljava/util/concurrent/ConcurrentSkipListMap$SubMap<TK;TV;>;"
    invoke-virtual {p0}, Ljava/util/concurrent/ConcurrentSkipListMap$SubMap;->keySet()Ljava/util/NavigableSet;

    move-result-object v0

    return-object v0
.end method

.method public lastEntry()Ljava/util/Map$Entry;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map$Entry",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 2919
    .local p0, "this":Ljava/util/concurrent/ConcurrentSkipListMap$SubMap;, "Ljava/util/concurrent/ConcurrentSkipListMap$SubMap<TK;TV;>;"
    iget-boolean v0, p0, Ljava/util/concurrent/ConcurrentSkipListMap$SubMap;->isDescending:Z

    if-eqz v0, :cond_0

    invoke-direct {p0}, Ljava/util/concurrent/ConcurrentSkipListMap$SubMap;->lowestEntry()Ljava/util/Map$Entry;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    invoke-direct {p0}, Ljava/util/concurrent/ConcurrentSkipListMap$SubMap;->highestEntry()Ljava/util/Map$Entry;

    move-result-object v0

    goto :goto_0
.end method

.method public lastKey()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TK;"
        }
    .end annotation

    .prologue
    .line 2911
    .local p0, "this":Ljava/util/concurrent/ConcurrentSkipListMap$SubMap;, "Ljava/util/concurrent/ConcurrentSkipListMap$SubMap<TK;TV;>;"
    iget-boolean v0, p0, Ljava/util/concurrent/ConcurrentSkipListMap$SubMap;->isDescending:Z

    if-eqz v0, :cond_0

    invoke-direct {p0}, Ljava/util/concurrent/ConcurrentSkipListMap$SubMap;->lowestKey()Ljava/lang/Object;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    invoke-direct {p0}, Ljava/util/concurrent/ConcurrentSkipListMap$SubMap;->highestKey()Ljava/lang/Object;

    move-result-object v0

    goto :goto_0
.end method

.method public lowerEntry(Ljava/lang/Object;)Ljava/util/Map$Entry;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)",
            "Ljava/util/Map$Entry",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 2883
    .local p0, "this":Ljava/util/concurrent/ConcurrentSkipListMap$SubMap;, "Ljava/util/concurrent/ConcurrentSkipListMap$SubMap<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    const/4 v0, 0x2

    invoke-direct {p0, p1, v0}, Ljava/util/concurrent/ConcurrentSkipListMap$SubMap;->getNearEntry(Ljava/lang/Object;I)Ljava/util/Map$Entry;

    move-result-object v0

    return-object v0
.end method

.method public lowerKey(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)TK;"
        }
    .end annotation

    .prologue
    .line 2887
    .local p0, "this":Ljava/util/concurrent/ConcurrentSkipListMap$SubMap;, "Ljava/util/concurrent/ConcurrentSkipListMap$SubMap<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    const/4 v0, 0x2

    invoke-direct {p0, p1, v0}, Ljava/util/concurrent/ConcurrentSkipListMap$SubMap;->getNearKey(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public navigableKeySet()Ljava/util/NavigableSet;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/NavigableSet",
            "<TK;>;"
        }
    .end annotation

    .prologue
    .line 2938
    .local p0, "this":Ljava/util/concurrent/ConcurrentSkipListMap$SubMap;, "Ljava/util/concurrent/ConcurrentSkipListMap$SubMap<TK;TV;>;"
    iget-object v0, p0, Ljava/util/concurrent/ConcurrentSkipListMap$SubMap;->keySetView:Ljava/util/concurrent/ConcurrentSkipListMap$KeySet;

    .line 2939
    .local v0, "ks":Ljava/util/concurrent/ConcurrentSkipListMap$KeySet;, "Ljava/util/concurrent/ConcurrentSkipListMap$KeySet<TK;>;"
    if-eqz v0, :cond_0

    .end local v0    # "ks":Ljava/util/concurrent/ConcurrentSkipListMap$KeySet;, "Ljava/util/concurrent/ConcurrentSkipListMap$KeySet<TK;>;"
    :goto_0
    return-object v0

    .restart local v0    # "ks":Ljava/util/concurrent/ConcurrentSkipListMap$KeySet;, "Ljava/util/concurrent/ConcurrentSkipListMap$KeySet<TK;>;"
    :cond_0
    new-instance v0, Ljava/util/concurrent/ConcurrentSkipListMap$KeySet;

    .end local v0    # "ks":Ljava/util/concurrent/ConcurrentSkipListMap$KeySet;, "Ljava/util/concurrent/ConcurrentSkipListMap$KeySet<TK;>;"
    invoke-direct {v0, p0}, Ljava/util/concurrent/ConcurrentSkipListMap$KeySet;-><init>(Ljava/util/concurrent/ConcurrentNavigableMap;)V

    iput-object v0, p0, Ljava/util/concurrent/ConcurrentSkipListMap$SubMap;->keySetView:Ljava/util/concurrent/ConcurrentSkipListMap$KeySet;

    goto :goto_0
.end method

.method public pollFirstEntry()Ljava/util/Map$Entry;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map$Entry",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 2923
    .local p0, "this":Ljava/util/concurrent/ConcurrentSkipListMap$SubMap;, "Ljava/util/concurrent/ConcurrentSkipListMap$SubMap<TK;TV;>;"
    iget-boolean v0, p0, Ljava/util/concurrent/ConcurrentSkipListMap$SubMap;->isDescending:Z

    if-eqz v0, :cond_0

    invoke-direct {p0}, Ljava/util/concurrent/ConcurrentSkipListMap$SubMap;->removeHighest()Ljava/util/Map$Entry;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    invoke-direct {p0}, Ljava/util/concurrent/ConcurrentSkipListMap$SubMap;->removeLowest()Ljava/util/Map$Entry;

    move-result-object v0

    goto :goto_0
.end method

.method public pollLastEntry()Ljava/util/Map$Entry;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map$Entry",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 2927
    .local p0, "this":Ljava/util/concurrent/ConcurrentSkipListMap$SubMap;, "Ljava/util/concurrent/ConcurrentSkipListMap$SubMap<TK;TV;>;"
    iget-boolean v0, p0, Ljava/util/concurrent/ConcurrentSkipListMap$SubMap;->isDescending:Z

    if-eqz v0, :cond_0

    invoke-direct {p0}, Ljava/util/concurrent/ConcurrentSkipListMap$SubMap;->removeLowest()Ljava/util/Map$Entry;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    invoke-direct {p0}, Ljava/util/concurrent/ConcurrentSkipListMap$SubMap;->removeHighest()Ljava/util/Map$Entry;

    move-result-object v0

    goto :goto_0
.end method

.method public put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;)TV;"
        }
    .end annotation

    .prologue
    .line 2712
    .local p0, "this":Ljava/util/concurrent/ConcurrentSkipListMap$SubMap;, "Ljava/util/concurrent/ConcurrentSkipListMap$SubMap<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    .local p2, "value":Ljava/lang/Object;, "TV;"
    invoke-direct {p0, p1}, Ljava/util/concurrent/ConcurrentSkipListMap$SubMap;->checkKeyBounds(Ljava/lang/Object;)V

    .line 2713
    iget-object v0, p0, Ljava/util/concurrent/ConcurrentSkipListMap$SubMap;->m:Ljava/util/concurrent/ConcurrentSkipListMap;

    invoke-virtual {v0, p1, p2}, Ljava/util/concurrent/ConcurrentSkipListMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;)TV;"
        }
    .end annotation

    .prologue
    .line 2761
    .local p0, "this":Ljava/util/concurrent/ConcurrentSkipListMap$SubMap;, "Ljava/util/concurrent/ConcurrentSkipListMap$SubMap<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    .local p2, "value":Ljava/lang/Object;, "TV;"
    invoke-direct {p0, p1}, Ljava/util/concurrent/ConcurrentSkipListMap$SubMap;->checkKeyBounds(Ljava/lang/Object;)V

    .line 2762
    iget-object v0, p0, Ljava/util/concurrent/ConcurrentSkipListMap$SubMap;->m:Ljava/util/concurrent/ConcurrentSkipListMap;

    invoke-virtual {v0, p1, p2}, Ljava/util/concurrent/ConcurrentSkipListMap;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public remove(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .param p1, "key"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")TV;"
        }
    .end annotation

    .prologue
    .line 2717
    .local p0, "this":Ljava/util/concurrent/ConcurrentSkipListMap$SubMap;, "Ljava/util/concurrent/ConcurrentSkipListMap$SubMap<TK;TV;>;"
    move-object v0, p1

    .line 2718
    .local v0, "k":Ljava/lang/Object;, "TK;"
    invoke-direct {p0, v0}, Ljava/util/concurrent/ConcurrentSkipListMap$SubMap;->inBounds(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x0

    :goto_0
    return-object v1

    :cond_0
    iget-object v1, p0, Ljava/util/concurrent/ConcurrentSkipListMap$SubMap;->m:Ljava/util/concurrent/ConcurrentSkipListMap;

    invoke-virtual {v1, v0}, Ljava/util/concurrent/ConcurrentSkipListMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    goto :goto_0
.end method

.method public remove(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 2
    .param p1, "key"    # Ljava/lang/Object;
    .param p2, "value"    # Ljava/lang/Object;

    .prologue
    .line 2766
    .local p0, "this":Ljava/util/concurrent/ConcurrentSkipListMap$SubMap;, "Ljava/util/concurrent/ConcurrentSkipListMap$SubMap<TK;TV;>;"
    move-object v0, p1

    .line 2767
    .local v0, "k":Ljava/lang/Object;, "TK;"
    invoke-direct {p0, v0}, Ljava/util/concurrent/ConcurrentSkipListMap$SubMap;->inBounds(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Ljava/util/concurrent/ConcurrentSkipListMap$SubMap;->m:Ljava/util/concurrent/ConcurrentSkipListMap;

    invoke-virtual {v1, v0, p2}, Ljava/util/concurrent/ConcurrentSkipListMap;->remove(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public replace(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;)TV;"
        }
    .end annotation

    .prologue
    .line 2776
    .local p0, "this":Ljava/util/concurrent/ConcurrentSkipListMap$SubMap;, "Ljava/util/concurrent/ConcurrentSkipListMap$SubMap<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    .local p2, "value":Ljava/lang/Object;, "TV;"
    invoke-direct {p0, p1}, Ljava/util/concurrent/ConcurrentSkipListMap$SubMap;->checkKeyBounds(Ljava/lang/Object;)V

    .line 2777
    iget-object v0, p0, Ljava/util/concurrent/ConcurrentSkipListMap$SubMap;->m:Ljava/util/concurrent/ConcurrentSkipListMap;

    invoke-virtual {v0, p1, p2}, Ljava/util/concurrent/ConcurrentSkipListMap;->replace(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public replace(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;TV;)Z"
        }
    .end annotation

    .prologue
    .line 2771
    .local p0, "this":Ljava/util/concurrent/ConcurrentSkipListMap$SubMap;, "Ljava/util/concurrent/ConcurrentSkipListMap$SubMap<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    .local p2, "oldValue":Ljava/lang/Object;, "TV;"
    .local p3, "newValue":Ljava/lang/Object;, "TV;"
    invoke-direct {p0, p1}, Ljava/util/concurrent/ConcurrentSkipListMap$SubMap;->checkKeyBounds(Ljava/lang/Object;)V

    .line 2772
    iget-object v0, p0, Ljava/util/concurrent/ConcurrentSkipListMap$SubMap;->m:Ljava/util/concurrent/ConcurrentSkipListMap;

    invoke-virtual {v0, p1, p2, p3}, Ljava/util/concurrent/ConcurrentSkipListMap;->replace(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public size()I
    .locals 6

    .prologue
    .line 2722
    .local p0, "this":Ljava/util/concurrent/ConcurrentSkipListMap$SubMap;, "Ljava/util/concurrent/ConcurrentSkipListMap$SubMap<TK;TV;>;"
    const-wide/16 v0, 0x0

    .line 2723
    .local v0, "count":J
    invoke-direct {p0}, Ljava/util/concurrent/ConcurrentSkipListMap$SubMap;->loNode()Ljava/util/concurrent/ConcurrentSkipListMap$Node;

    move-result-object v2

    .line 2724
    .local v2, "n":Ljava/util/concurrent/ConcurrentSkipListMap$Node;, "Ljava/util/concurrent/ConcurrentSkipListMap$Node<TK;TV;>;"
    :goto_0
    invoke-direct {p0, v2}, Ljava/util/concurrent/ConcurrentSkipListMap$SubMap;->isBeforeEnd(Ljava/util/concurrent/ConcurrentSkipListMap$Node;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 2726
    invoke-virtual {v2}, Ljava/util/concurrent/ConcurrentSkipListMap$Node;->getValidValue()Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 2727
    const-wide/16 v4, 0x1

    add-long/2addr v0, v4

    .line 2725
    :cond_0
    iget-object v2, v2, Ljava/util/concurrent/ConcurrentSkipListMap$Node;->next:Ljava/util/concurrent/ConcurrentSkipListMap$Node;

    goto :goto_0

    .line 2729
    :cond_1
    const-wide/32 v4, 0x7fffffff

    cmp-long v3, v0, v4

    if-ltz v3, :cond_2

    const v3, 0x7fffffff

    :goto_1
    return v3

    :cond_2
    long-to-int v3, v0

    goto :goto_1
.end method

.method public bridge synthetic subMap(Ljava/lang/Object;ZLjava/lang/Object;Z)Ljava/util/NavigableMap;
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;
    .param p2, "x1"    # Z
    .param p3, "x2"    # Ljava/lang/Object;
    .param p4, "x3"    # Z

    .prologue
    .line 2445
    .local p0, "this":Ljava/util/concurrent/ConcurrentSkipListMap$SubMap;, "Ljava/util/concurrent/ConcurrentSkipListMap$SubMap<TK;TV;>;"
    invoke-virtual {p0, p1, p2, p3, p4}, Ljava/util/concurrent/ConcurrentSkipListMap$SubMap;->subMap(Ljava/lang/Object;ZLjava/lang/Object;Z)Ljava/util/concurrent/ConcurrentSkipListMap$SubMap;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic subMap(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/SortedMap;
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;
    .param p2, "x1"    # Ljava/lang/Object;

    .prologue
    .line 2445
    .local p0, "this":Ljava/util/concurrent/ConcurrentSkipListMap$SubMap;, "Ljava/util/concurrent/ConcurrentSkipListMap$SubMap<TK;TV;>;"
    invoke-virtual {p0, p1, p2}, Ljava/util/concurrent/ConcurrentSkipListMap$SubMap;->subMap(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/concurrent/ConcurrentSkipListMap$SubMap;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic subMap(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/concurrent/ConcurrentNavigableMap;
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;
    .param p2, "x1"    # Ljava/lang/Object;

    .prologue
    .line 2445
    .local p0, "this":Ljava/util/concurrent/ConcurrentSkipListMap$SubMap;, "Ljava/util/concurrent/ConcurrentSkipListMap$SubMap<TK;TV;>;"
    invoke-virtual {p0, p1, p2}, Ljava/util/concurrent/ConcurrentSkipListMap$SubMap;->subMap(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/concurrent/ConcurrentSkipListMap$SubMap;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic subMap(Ljava/lang/Object;ZLjava/lang/Object;Z)Ljava/util/concurrent/ConcurrentNavigableMap;
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;
    .param p2, "x1"    # Z
    .param p3, "x2"    # Ljava/lang/Object;
    .param p4, "x3"    # Z

    .prologue
    .line 2445
    .local p0, "this":Ljava/util/concurrent/ConcurrentSkipListMap$SubMap;, "Ljava/util/concurrent/ConcurrentSkipListMap$SubMap<TK;TV;>;"
    invoke-virtual {p0, p1, p2, p3, p4}, Ljava/util/concurrent/ConcurrentSkipListMap$SubMap;->subMap(Ljava/lang/Object;ZLjava/lang/Object;Z)Ljava/util/concurrent/ConcurrentSkipListMap$SubMap;

    move-result-object v0

    return-object v0
.end method

.method public subMap(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/concurrent/ConcurrentSkipListMap$SubMap;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TK;)",
            "Ljava/util/concurrent/ConcurrentSkipListMap$SubMap",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 2856
    .local p0, "this":Ljava/util/concurrent/ConcurrentSkipListMap$SubMap;, "Ljava/util/concurrent/ConcurrentSkipListMap$SubMap<TK;TV;>;"
    .local p1, "fromKey":Ljava/lang/Object;, "TK;"
    .local p2, "toKey":Ljava/lang/Object;, "TK;"
    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v0, p2, v1}, Ljava/util/concurrent/ConcurrentSkipListMap$SubMap;->subMap(Ljava/lang/Object;ZLjava/lang/Object;Z)Ljava/util/concurrent/ConcurrentSkipListMap$SubMap;

    move-result-object v0

    return-object v0
.end method

.method public subMap(Ljava/lang/Object;ZLjava/lang/Object;Z)Ljava/util/concurrent/ConcurrentSkipListMap$SubMap;
    .locals 1
    .param p2, "fromInclusive"    # Z
    .param p4, "toInclusive"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;ZTK;Z)",
            "Ljava/util/concurrent/ConcurrentSkipListMap$SubMap",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 2836
    .local p0, "this":Ljava/util/concurrent/ConcurrentSkipListMap$SubMap;, "Ljava/util/concurrent/ConcurrentSkipListMap$SubMap<TK;TV;>;"
    .local p1, "fromKey":Ljava/lang/Object;, "TK;"
    .local p3, "toKey":Ljava/lang/Object;, "TK;"
    if-eqz p1, :cond_0

    if-nez p3, :cond_1

    .line 2837
    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 2838
    :cond_1
    invoke-direct {p0, p1, p2, p3, p4}, Ljava/util/concurrent/ConcurrentSkipListMap$SubMap;->newSubMap(Ljava/lang/Object;ZLjava/lang/Object;Z)Ljava/util/concurrent/ConcurrentSkipListMap$SubMap;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic tailMap(Ljava/lang/Object;Z)Ljava/util/NavigableMap;
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;
    .param p2, "x1"    # Z

    .prologue
    .line 2445
    .local p0, "this":Ljava/util/concurrent/ConcurrentSkipListMap$SubMap;, "Ljava/util/concurrent/ConcurrentSkipListMap$SubMap<TK;TV;>;"
    invoke-virtual {p0, p1, p2}, Ljava/util/concurrent/ConcurrentSkipListMap$SubMap;->tailMap(Ljava/lang/Object;Z)Ljava/util/concurrent/ConcurrentSkipListMap$SubMap;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic tailMap(Ljava/lang/Object;)Ljava/util/SortedMap;
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 2445
    .local p0, "this":Ljava/util/concurrent/ConcurrentSkipListMap$SubMap;, "Ljava/util/concurrent/ConcurrentSkipListMap$SubMap<TK;TV;>;"
    invoke-virtual {p0, p1}, Ljava/util/concurrent/ConcurrentSkipListMap$SubMap;->tailMap(Ljava/lang/Object;)Ljava/util/concurrent/ConcurrentSkipListMap$SubMap;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic tailMap(Ljava/lang/Object;)Ljava/util/concurrent/ConcurrentNavigableMap;
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 2445
    .local p0, "this":Ljava/util/concurrent/ConcurrentSkipListMap$SubMap;, "Ljava/util/concurrent/ConcurrentSkipListMap$SubMap<TK;TV;>;"
    invoke-virtual {p0, p1}, Ljava/util/concurrent/ConcurrentSkipListMap$SubMap;->tailMap(Ljava/lang/Object;)Ljava/util/concurrent/ConcurrentSkipListMap$SubMap;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic tailMap(Ljava/lang/Object;Z)Ljava/util/concurrent/ConcurrentNavigableMap;
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;
    .param p2, "x1"    # Z

    .prologue
    .line 2445
    .local p0, "this":Ljava/util/concurrent/ConcurrentSkipListMap$SubMap;, "Ljava/util/concurrent/ConcurrentSkipListMap$SubMap<TK;TV;>;"
    invoke-virtual {p0, p1, p2}, Ljava/util/concurrent/ConcurrentSkipListMap$SubMap;->tailMap(Ljava/lang/Object;Z)Ljava/util/concurrent/ConcurrentSkipListMap$SubMap;

    move-result-object v0

    return-object v0
.end method

.method public tailMap(Ljava/lang/Object;)Ljava/util/concurrent/ConcurrentSkipListMap$SubMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)",
            "Ljava/util/concurrent/ConcurrentSkipListMap$SubMap",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 2864
    .local p0, "this":Ljava/util/concurrent/ConcurrentSkipListMap$SubMap;, "Ljava/util/concurrent/ConcurrentSkipListMap$SubMap<TK;TV;>;"
    .local p1, "fromKey":Ljava/lang/Object;, "TK;"
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Ljava/util/concurrent/ConcurrentSkipListMap$SubMap;->tailMap(Ljava/lang/Object;Z)Ljava/util/concurrent/ConcurrentSkipListMap$SubMap;

    move-result-object v0

    return-object v0
.end method

.method public tailMap(Ljava/lang/Object;Z)Ljava/util/concurrent/ConcurrentSkipListMap$SubMap;
    .locals 2
    .param p2, "inclusive"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;Z)",
            "Ljava/util/concurrent/ConcurrentSkipListMap$SubMap",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 2850
    .local p0, "this":Ljava/util/concurrent/ConcurrentSkipListMap$SubMap;, "Ljava/util/concurrent/ConcurrentSkipListMap$SubMap<TK;TV;>;"
    .local p1, "fromKey":Ljava/lang/Object;, "TK;"
    if-nez p1, :cond_0

    .line 2851
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 2852
    :cond_0
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, p1, p2, v0, v1}, Ljava/util/concurrent/ConcurrentSkipListMap$SubMap;->newSubMap(Ljava/lang/Object;ZLjava/lang/Object;Z)Ljava/util/concurrent/ConcurrentSkipListMap$SubMap;

    move-result-object v0

    return-object v0
.end method

.method valueIterator()Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator",
            "<TV;>;"
        }
    .end annotation

    .prologue
    .line 2961
    .local p0, "this":Ljava/util/concurrent/ConcurrentSkipListMap$SubMap;, "Ljava/util/concurrent/ConcurrentSkipListMap$SubMap<TK;TV;>;"
    new-instance v0, Ljava/util/concurrent/ConcurrentSkipListMap$SubMap$SubMapValueIterator;

    invoke-direct {v0, p0}, Ljava/util/concurrent/ConcurrentSkipListMap$SubMap$SubMapValueIterator;-><init>(Ljava/util/concurrent/ConcurrentSkipListMap$SubMap;)V

    return-object v0
.end method

.method public values()Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection",
            "<TV;>;"
        }
    .end annotation

    .prologue
    .line 2943
    .local p0, "this":Ljava/util/concurrent/ConcurrentSkipListMap$SubMap;, "Ljava/util/concurrent/ConcurrentSkipListMap$SubMap<TK;TV;>;"
    iget-object v0, p0, Ljava/util/concurrent/ConcurrentSkipListMap$SubMap;->valuesView:Ljava/util/Collection;

    .line 2944
    .local v0, "vs":Ljava/util/Collection;, "Ljava/util/Collection<TV;>;"
    if-eqz v0, :cond_0

    .end local v0    # "vs":Ljava/util/Collection;, "Ljava/util/Collection<TV;>;"
    :goto_0
    return-object v0

    .restart local v0    # "vs":Ljava/util/Collection;, "Ljava/util/Collection<TV;>;"
    :cond_0
    new-instance v0, Ljava/util/concurrent/ConcurrentSkipListMap$Values;

    .end local v0    # "vs":Ljava/util/Collection;, "Ljava/util/Collection<TV;>;"
    invoke-direct {v0, p0}, Ljava/util/concurrent/ConcurrentSkipListMap$Values;-><init>(Ljava/util/concurrent/ConcurrentNavigableMap;)V

    iput-object v0, p0, Ljava/util/concurrent/ConcurrentSkipListMap$SubMap;->valuesView:Ljava/util/Collection;

    goto :goto_0
.end method
