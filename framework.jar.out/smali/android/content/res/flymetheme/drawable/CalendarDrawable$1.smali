.class Landroid/content/res/flymetheme/drawable/CalendarDrawable$1;
.super Landroid/os/Handler;
.source "CalendarDrawable.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/content/res/flymetheme/drawable/CalendarDrawable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/content/res/flymetheme/drawable/CalendarDrawable;


# direct methods
.method constructor <init>(Landroid/content/res/flymetheme/drawable/CalendarDrawable;Landroid/os/Looper;)V
    .locals 0
    .param p2, "x0"    # Landroid/os/Looper;

    .prologue
    iput-object p1, p0, Landroid/content/res/flymetheme/drawable/CalendarDrawable$1;->this$0:Landroid/content/res/flymetheme/drawable/CalendarDrawable;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    iget v0, p1, Landroid/os/Message;->what:I

    # getter for: Landroid/content/res/flymetheme/drawable/CalendarDrawable;->UPDATE_MESSAGE:I
    invoke-static {}, Landroid/content/res/flymetheme/drawable/CalendarDrawable;->access$000()I

    move-result v1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Landroid/content/res/flymetheme/drawable/CalendarDrawable$1;->this$0:Landroid/content/res/flymetheme/drawable/CalendarDrawable;

    invoke-virtual {v0}, Landroid/content/res/flymetheme/drawable/CalendarDrawable;->isVisible()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/content/res/flymetheme/drawable/CalendarDrawable$1;->this$0:Landroid/content/res/flymetheme/drawable/CalendarDrawable;

    invoke-virtual {v0}, Landroid/content/res/flymetheme/drawable/CalendarDrawable;->invalidateSelf()V

    :cond_0
    return-void
.end method
