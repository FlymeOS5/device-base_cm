.class Lcom/android/internal/app/MzResolverActivity$DetailListFrag$4;
.super Ljava/lang/Object;
.source "MzResolverActivity.java"

# interfaces
.implements Lcom/meizu/widget/DragSortListView$DropListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/app/MzResolverActivity$DetailListFrag;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/app/MzResolverActivity$DetailListFrag;


# direct methods
.method constructor <init>(Lcom/android/internal/app/MzResolverActivity$DetailListFrag;)V
    .locals 0

    .prologue
    iput-object p1, p0, Lcom/android/internal/app/MzResolverActivity$DetailListFrag$4;->this$0:Lcom/android/internal/app/MzResolverActivity$DetailListFrag;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public drop(II)V
    .locals 1
    .param p1, "from"    # I
    .param p2, "to"    # I

    .prologue
    iget-object v0, p0, Lcom/android/internal/app/MzResolverActivity$DetailListFrag$4;->this$0:Lcom/android/internal/app/MzResolverActivity$DetailListFrag;

    # getter for: Lcom/android/internal/app/MzResolverActivity$DetailListFrag;->mAdapter:Lcom/android/internal/app/MzResolverActivity$ResolveGridAdapter;
    invoke-static {v0}, Lcom/android/internal/app/MzResolverActivity$DetailListFrag;->access$1200(Lcom/android/internal/app/MzResolverActivity$DetailListFrag;)Lcom/android/internal/app/MzResolverActivity$ResolveGridAdapter;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/android/internal/app/MzResolverActivity$ResolveGridAdapter;->changePosition(II)V

    iget-object v0, p0, Lcom/android/internal/app/MzResolverActivity$DetailListFrag$4;->this$0:Lcom/android/internal/app/MzResolverActivity$DetailListFrag;

    # getter for: Lcom/android/internal/app/MzResolverActivity$DetailListFrag;->mAdapter:Lcom/android/internal/app/MzResolverActivity$ResolveGridAdapter;
    invoke-static {v0}, Lcom/android/internal/app/MzResolverActivity$DetailListFrag;->access$1200(Lcom/android/internal/app/MzResolverActivity$DetailListFrag;)Lcom/android/internal/app/MzResolverActivity$ResolveGridAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/app/MzResolverActivity$ResolveGridAdapter;->notifyDataSetChanged()V

    return-void
.end method
