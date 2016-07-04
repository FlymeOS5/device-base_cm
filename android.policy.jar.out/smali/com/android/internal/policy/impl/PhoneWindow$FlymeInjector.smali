.class final Lcom/android/internal/policy/impl/PhoneWindow$FlymeInjector;
.super Ljava/lang/Object;
.source "PhoneWindow.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/policy/impl/PhoneWindow;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "FlymeInjector"
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static flymeDispatchKeyEvent(Lcom/android/internal/policy/impl/PhoneWindow$DecorView;Landroid/view/KeyEvent;)Z
    .locals 5
    .param p0, "decorView"    # Lcom/android/internal/policy/impl/PhoneWindow$DecorView;
    .param p1, "event"    # Landroid/view/KeyEvent;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v3

    if-nez v3, :cond_0

    move v0, v1

    .local v0, "isDown":Z
    :goto_0
    if-nez v0, :cond_1

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v3

    const/16 v4, 0x7a

    if-ne v3, v4, :cond_1

    invoke-virtual {p1}, Landroid/view/KeyEvent;->isCtrlPressed()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-virtual {p0}, Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->dispatchStatusBarTap()Z

    :goto_1
    return v1

    .end local v0    # "isDown":Z
    :cond_0
    move v0, v2

    goto :goto_0

    .restart local v0    # "isDown":Z
    :cond_1
    move v1, v2

    goto :goto_1
.end method

.method static flymeDoStatusBarDrag(Lcom/android/internal/policy/impl/PhoneWindow$DecorView;Landroid/view/DragEvent;)Z
    .locals 9
    .param p0, "decorView"    # Lcom/android/internal/policy/impl/PhoneWindow$DecorView;
    .param p1, "event"    # Landroid/view/DragEvent;

    .prologue
    const/4 v8, 0x1

    const/4 v2, 0x0

    invoke-virtual {p0}, Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->flymeGetFieldActionMode()Landroid/view/ActionMode;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/ActionMode;->getActionItemDragListener()Landroid/view/ActionMode$OnActionItemDragListener;

    move-result-object v7

    .local v7, "listener":Landroid/view/ActionMode$OnActionItemDragListener;
    if-eqz v7, :cond_0

    invoke-virtual {p1}, Landroid/view/DragEvent;->getAction()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    :goto_0
    :pswitch_0
    move v2, v8

    :cond_0
    return v2

    :pswitch_1
    invoke-virtual {p0, v8}, Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->notifyStatusBarNfcShareStateChanged(Z)V

    goto :goto_0

    :pswitch_2
    invoke-virtual {p0, v2}, Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->notifyStatusBarNfcShareStateChanged(Z)V

    goto :goto_0

    :pswitch_3
    new-instance v0, Lcom/android/internal/view/menu/ActionMenuItem;

    invoke-virtual {p0}, Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->getContext()Landroid/content/Context;

    move-result-object v1

    const v3, #android:id@home#t

    const-string v6, "NFC_SHARE"

    move v4, v2

    move v5, v2

    invoke-direct/range {v0 .. v6}, Lcom/android/internal/view/menu/ActionMenuItem;-><init>(Landroid/content/Context;IIIILjava/lang/CharSequence;)V

    .local v0, "menuItem":Lcom/android/internal/view/menu/ActionMenuItem;
    invoke-interface {v7, p1, v0}, Landroid/view/ActionMode$OnActionItemDragListener;->onDrag(Landroid/view/DragEvent;Landroid/view/MenuItem;)V

    iput-boolean v2, p0, Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->mFlymeDragInStatusBar:Z

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_3
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method static flymeDrawStatusBarBackground(Lcom/android/internal/policy/impl/PhoneWindow$DecorView;Landroid/graphics/Canvas;)V
    .locals 1
    .param p0, "decorView"    # Lcom/android/internal/policy/impl/PhoneWindow$DecorView;
    .param p1, "c"    # Landroid/graphics/Canvas;

    .prologue
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->getContext()Landroid/content/Context;

    move-result-object v0

    instance-of v0, v0, Landroid/app/Activity;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0, p1}, Landroid/app/Activity;->drawStatusBarBackground(Landroid/graphics/Canvas;)V

    :cond_0
    return-void
.end method

.method static flymeObtainDragEvent(ILandroid/view/DragEvent;)Landroid/view/DragEvent;
    .locals 7
    .param p0, "action"    # I
    .param p1, "event"    # Landroid/view/DragEvent;

    .prologue
    invoke-virtual {p1}, Landroid/view/DragEvent;->getX()F

    move-result v1

    invoke-virtual {p1}, Landroid/view/DragEvent;->getY()F

    move-result v2

    invoke-virtual {p1}, Landroid/view/DragEvent;->getLocalState()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {p1}, Landroid/view/DragEvent;->getClipDescription()Landroid/content/ClipDescription;

    move-result-object v4

    invoke-virtual {p1}, Landroid/view/DragEvent;->getClipData()Landroid/content/ClipData;

    move-result-object v5

    invoke-virtual {p1}, Landroid/view/DragEvent;->getResult()Z

    move-result v6

    move v0, p0

    invoke-static/range {v0 .. v6}, Landroid/view/DragEvent;->obtain(IFFLjava/lang/Object;Landroid/content/ClipDescription;Landroid/content/ClipData;Z)Landroid/view/DragEvent;

    move-result-object v0

    return-object v0
.end method

.method static flymeOnStatusBarColorChange(Lcom/android/internal/policy/impl/PhoneWindow;I)I
    .locals 1
    .param p0, "phoneWindow"    # Lcom/android/internal/policy/impl/PhoneWindow;
    .param p1, "color"    # I

    .prologue
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/PhoneWindow;->getContext()Landroid/content/Context;

    move-result-object v0

    instance-of v0, v0, Landroid/app/Activity;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/internal/policy/impl/PhoneWindow;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0, p1}, Landroid/app/Activity;->onStatusBarColorChange(I)I

    move-result p1

    .end local p1    # "color":I
    :cond_0
    return p1
.end method

.method static flymeSuperDispatchKeyEvent(Lcom/android/internal/policy/impl/PhoneWindow$DecorView;Landroid/view/KeyEvent;)Z
    .locals 4
    .param p0, "decorView"    # Lcom/android/internal/policy/impl/PhoneWindow$DecorView;
    .param p1, "event"    # Landroid/view/KeyEvent;

    .prologue
    const/4 v2, 0x1

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    .local v0, "action":I
    if-ne v0, v2, :cond_2

    invoke-virtual {p1}, Landroid/view/KeyEvent;->isCanceled()Z

    move-result v3

    if-nez v3, :cond_2

    invoke-virtual {p0}, Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->flymeGetFieldActionMode()Landroid/view/ActionMode;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/ActionMode;->getBackPressListener()Landroid/view/ActionMode$BackPressedListener;

    move-result-object v1

    .local v1, "listener":Landroid/view/ActionMode$BackPressedListener;
    if-eqz v1, :cond_0

    invoke-interface {v1}, Landroid/view/ActionMode$BackPressedListener;->onBackPressed()Z

    move-result v2

    if-nez v2, :cond_1

    :cond_0
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->flymeGetFieldActionMode()Landroid/view/ActionMode;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/ActionMode;->finish()V

    :cond_1
    const/4 v2, 0x0

    .end local v1    # "listener":Landroid/view/ActionMode$BackPressedListener;
    :cond_2
    return v2
.end method

.method static flymeGetDisplayMetricsHeight(Lcom/android/internal/policy/impl/PhoneWindow$DecorView;Lcom/android/internal/policy/impl/PhoneWindow$ColorViewState;Lcom/android/internal/policy/impl/PhoneWindow;I)I
    .locals 4
    .param p0, "decorView"    # Lcom/android/internal/policy/impl/PhoneWindow$DecorView;
    .param p1, "state"    # Lcom/android/internal/policy/impl/PhoneWindow$ColorViewState;
    .param p2, "phoneWindow"    # Lcom/android/internal/policy/impl/PhoneWindow;
    .param p3, "height"    # I

    .prologue
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->flymeGetFieldStatusColorViewState()Lcom/android/internal/policy/impl/PhoneWindow$ColorViewState;

    move-result-object v0

    if-ne p1, v0, :cond_1

    if-nez p3, :cond_0

    invoke-virtual {p2}, Lcom/android/internal/policy/impl/PhoneWindow;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    const/high16 v1, -0x80000000

    and-int/2addr v0, v1

    if-eqz v0, :cond_0

    iget p3, p0, Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->mFlymeStableInsetTop:I

    :cond_0
    if-lez p3, :cond_2

    invoke-virtual {p0}, Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    float-to-double v0, v0

    const-wide/high16 v2, 0x4004000000000000L    # 2.5

    add-double/2addr v0, v2

    double-to-int v0, v0

    add-int/2addr v0, p3

    add-int/lit8 p3, v0, -0x1

    :cond_1
    :goto_0
    return p3

    :cond_2
    const/4 p3, 0x0

    goto :goto_0
.end method

.method static setFlymeStableInsetTop(Lcom/android/internal/policy/impl/PhoneWindow$DecorView;Landroid/view/WindowInsets;)V
    .locals 1
    .param p0, "decorView"    # Lcom/android/internal/policy/impl/PhoneWindow$DecorView;
    .param p1, "insets"    # Landroid/view/WindowInsets;

    .prologue
    invoke-virtual {p1}, Landroid/view/WindowInsets;->getStableInsetTop()I

    move-result v0

    iput v0, p0, Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->mFlymeStableInsetTop:I

    return-void
.end method
