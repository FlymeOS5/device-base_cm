.class public final Landroid/system/StructUtsname;
.super Ljava/lang/Object;
.source "StructUtsname.java"


# instance fields
.field public final machine:Ljava/lang/String;

.field public final nodename:Ljava/lang/String;

.field public final release:Ljava/lang/String;

.field public final sysname:Ljava/lang/String;

.field public final version:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "sysname"    # Ljava/lang/String;
    .param p2, "nodename"    # Ljava/lang/String;
    .param p3, "release"    # Ljava/lang/String;
    .param p4, "version"    # Ljava/lang/String;
    .param p5, "machine"    # Ljava/lang/String;

    .prologue
    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    iput-object p1, p0, Landroid/system/StructUtsname;->sysname:Ljava/lang/String;

    .line 46
    iput-object p2, p0, Landroid/system/StructUtsname;->nodename:Ljava/lang/String;

    .line 47
    iput-object p3, p0, Landroid/system/StructUtsname;->release:Ljava/lang/String;

    .line 48
    iput-object p4, p0, Landroid/system/StructUtsname;->version:Ljava/lang/String;

    .line 49
    iput-object p5, p0, Landroid/system/StructUtsname;->machine:Ljava/lang/String;

    .line 50
    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 53
    invoke-static {p0}, Llibcore/util/Objects;->toString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
