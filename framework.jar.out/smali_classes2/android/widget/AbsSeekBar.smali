.class public abstract Landroid/widget/AbsSeekBar;
.super Landroid/widget/ProgressBar;
.source "AbsSeekBar.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/widget/AbsSeekBar$FlymeInjector;
    }
.end annotation


# static fields
.field private static final NO_ALPHA:I = 0xff


# instance fields
.field mFlymeDragTouchDownX:F

.field mFlymeDragTouchDownY:F

.field mFlymeHalfThumbWidth:I

.field mFlymeInDragoning:Z

.field mFlymeTouchDownProgress:I

.field mFlymeTouchSlopSquare:I

.field protected mTouchScrollMode:I

.field private mDisabledAlpha:F

.field private mHasThumbTint:Z

.field private mHasThumbTintMode:Z

.field private mIsDragging:Z

.field mIsUserSeekable:Z

.field private mKeyProgressIncrement:I

.field private mScaledTouchSlop:I

.field private mSplitTrack:Z

.field private final mTempRect:Landroid/graphics/Rect;

.field private mThumb:Landroid/graphics/drawable/Drawable;

.field private mThumbOffset:I

.field private mThumbTintList:Landroid/content/res/ColorStateList;

.field private mThumbTintMode:Landroid/graphics/PorterDuff$Mode;

.field private mTouchDownX:F

.field mTouchProgressOffset:F


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    const/4 v1, 0x0

    invoke-direct {p0, p1}, Landroid/widget/ProgressBar;-><init>(Landroid/content/Context;)V

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroid/widget/AbsSeekBar;->mTempRect:Landroid/graphics/Rect;

    iput-object v3, p0, Landroid/widget/AbsSeekBar;->mThumbTintList:Landroid/content/res/ColorStateList;

    iput-object v3, p0, Landroid/widget/AbsSeekBar;->mThumbTintMode:Landroid/graphics/PorterDuff$Mode;

    iput-boolean v1, p0, Landroid/widget/AbsSeekBar;->mHasThumbTint:Z

    iput-boolean v1, p0, Landroid/widget/AbsSeekBar;->mHasThumbTintMode:Z

    iput-boolean v2, p0, Landroid/widget/AbsSeekBar;->mIsUserSeekable:Z

    iput v2, p0, Landroid/widget/AbsSeekBar;->mKeyProgressIncrement:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    const/4 v1, 0x0

    invoke-direct {p0, p1, p2}, Landroid/widget/ProgressBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroid/widget/AbsSeekBar;->mTempRect:Landroid/graphics/Rect;

    iput-object v3, p0, Landroid/widget/AbsSeekBar;->mThumbTintList:Landroid/content/res/ColorStateList;

    iput-object v3, p0, Landroid/widget/AbsSeekBar;->mThumbTintMode:Landroid/graphics/PorterDuff$Mode;

    iput-boolean v1, p0, Landroid/widget/AbsSeekBar;->mHasThumbTint:Z

    iput-boolean v1, p0, Landroid/widget/AbsSeekBar;->mHasThumbTintMode:Z

    iput-boolean v2, p0, Landroid/widget/AbsSeekBar;->mIsUserSeekable:Z

    iput v2, p0, Landroid/widget/AbsSeekBar;->mKeyProgressIncrement:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .prologue
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Landroid/widget/AbsSeekBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 9
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I
    .param p4, "defStyleRes"    # I

    .prologue
    const/4 v8, 0x0

    const/4 v4, 0x4

    const/4 v7, 0x3

    const/4 v6, 0x1

    const/4 v5, 0x0

    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/ProgressBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    new-instance v3, Landroid/graphics/Rect;

    invoke-direct {v3}, Landroid/graphics/Rect;-><init>()V

    iput-object v3, p0, Landroid/widget/AbsSeekBar;->mTempRect:Landroid/graphics/Rect;

    iput-object v8, p0, Landroid/widget/AbsSeekBar;->mThumbTintList:Landroid/content/res/ColorStateList;

    iput-object v8, p0, Landroid/widget/AbsSeekBar;->mThumbTintMode:Landroid/graphics/PorterDuff$Mode;

    iput-boolean v5, p0, Landroid/widget/AbsSeekBar;->mHasThumbTint:Z

    iput-boolean v5, p0, Landroid/widget/AbsSeekBar;->mHasThumbTintMode:Z

    iput-boolean v6, p0, Landroid/widget/AbsSeekBar;->mIsUserSeekable:Z

    iput v6, p0, Landroid/widget/AbsSeekBar;->mKeyProgressIncrement:I

    sget-object v3, Lcom/android/internal/R$styleable;->SeekBar:[I

    invoke-virtual {p1, p2, v3, p3, p4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .local v0, "a":Landroid/content/res/TypedArray;
    invoke-virtual {v0, v5}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .local v1, "thumb":Landroid/graphics/drawable/Drawable;
    invoke-virtual {p0, v1}, Landroid/widget/AbsSeekBar;->setThumb(Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {v0, v4}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v3, -0x1

    invoke-virtual {v0, v4, v3}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v3

    iget-object v4, p0, Landroid/widget/AbsSeekBar;->mThumbTintMode:Landroid/graphics/PorterDuff$Mode;

    invoke-static {v3, v4}, Landroid/graphics/drawable/Drawable;->parseTintMode(ILandroid/graphics/PorterDuff$Mode;)Landroid/graphics/PorterDuff$Mode;

    move-result-object v3

    iput-object v3, p0, Landroid/widget/AbsSeekBar;->mThumbTintMode:Landroid/graphics/PorterDuff$Mode;

    iput-boolean v6, p0, Landroid/widget/AbsSeekBar;->mHasThumbTintMode:Z

    :cond_0
    invoke-virtual {v0, v7}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-virtual {v0, v7}, Landroid/content/res/TypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v3

    iput-object v3, p0, Landroid/widget/AbsSeekBar;->mThumbTintList:Landroid/content/res/ColorStateList;

    iput-boolean v6, p0, Landroid/widget/AbsSeekBar;->mHasThumbTint:Z

    :cond_1
    invoke-virtual {p0}, Landroid/widget/AbsSeekBar;->getThumbOffset()I

    move-result v3

    invoke-virtual {v0, v6, v3}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v2

    .local v2, "thumbOffset":I
    invoke-virtual {p0, v2}, Landroid/widget/AbsSeekBar;->setThumbOffset(I)V

    const/4 v3, 0x2

    invoke-virtual {v0, v3, v5}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v3

    iput-boolean v3, p0, Landroid/widget/AbsSeekBar;->mSplitTrack:Z

    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    sget-object v3, Lcom/android/internal/R$styleable;->Theme:[I

    invoke-virtual {p1, p2, v3, v5, v5}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    const/high16 v3, 0x3f000000    # 0.5f

    invoke-virtual {v0, v7, v3}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v3

    iput v3, p0, Landroid/widget/AbsSeekBar;->mDisabledAlpha:F

    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    invoke-direct {p0}, Landroid/widget/AbsSeekBar;->applyThumbTint()V

    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v3

    iput v3, p0, Landroid/widget/AbsSeekBar;->mScaledTouchSlop:I

    invoke-static/range {p0 .. p0}, Landroid/widget/AbsSeekBar$FlymeInjector;->initFlymeExtraFields(Landroid/widget/AbsSeekBar;)V

    return-void
.end method

.method private applyThumbTint()V
    .locals 2

    .prologue
    iget-object v0, p0, Landroid/widget/AbsSeekBar;->mThumb:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_3

    iget-boolean v0, p0, Landroid/widget/AbsSeekBar;->mHasThumbTint:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Landroid/widget/AbsSeekBar;->mHasThumbTintMode:Z

    if-eqz v0, :cond_3

    :cond_0
    iget-object v0, p0, Landroid/widget/AbsSeekBar;->mThumb:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Landroid/widget/AbsSeekBar;->mThumb:Landroid/graphics/drawable/Drawable;

    iget-boolean v0, p0, Landroid/widget/AbsSeekBar;->mHasThumbTint:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/widget/AbsSeekBar;->mThumb:Landroid/graphics/drawable/Drawable;

    iget-object v1, p0, Landroid/widget/AbsSeekBar;->mThumbTintList:Landroid/content/res/ColorStateList;

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setTintList(Landroid/content/res/ColorStateList;)V

    :cond_1
    iget-boolean v0, p0, Landroid/widget/AbsSeekBar;->mHasThumbTintMode:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Landroid/widget/AbsSeekBar;->mThumb:Landroid/graphics/drawable/Drawable;

    iget-object v1, p0, Landroid/widget/AbsSeekBar;->mThumbTintMode:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setTintMode(Landroid/graphics/PorterDuff$Mode;)V

    :cond_2
    iget-object v0, p0, Landroid/widget/AbsSeekBar;->mThumb:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Landroid/widget/AbsSeekBar;->mThumb:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0}, Landroid/widget/AbsSeekBar;->getDrawableState()[I

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    :cond_3
    return-void
.end method

.method private attemptClaimDrag()V
    .locals 2

    .prologue
    iget-object v0, p0, Landroid/widget/AbsSeekBar;->mParent:Landroid/view/ViewParent;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/widget/AbsSeekBar;->mParent:Landroid/view/ViewParent;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    :cond_0
    return-void
.end method

.method private getScale()F
    .locals 3

    .prologue
    invoke-virtual {p0}, Landroid/widget/AbsSeekBar;->getMax()I

    move-result v0

    .local v0, "max":I
    if-lez v0, :cond_0

    invoke-virtual {p0}, Landroid/widget/AbsSeekBar;->getProgress()I

    move-result v1

    int-to-float v1, v1

    int-to-float v2, v0

    div-float/2addr v1, v2

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private setHotspot(FF)V
    .locals 1
    .param p1, "x"    # F
    .param p2, "y"    # F

    .prologue
    invoke-virtual {p0}, Landroid/widget/AbsSeekBar;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .local v0, "bg":Landroid/graphics/drawable/Drawable;
    if-eqz v0, :cond_0

    invoke-virtual {v0, p1, p2}, Landroid/graphics/drawable/Drawable;->setHotspot(FF)V

    :cond_0
    return-void
.end method

.method private setThumbPos(ILandroid/graphics/drawable/Drawable;FI)V
    .locals 21
    .param p1, "w"    # I
    .param p2, "thumb"    # Landroid/graphics/drawable/Drawable;
    .param p3, "scale"    # F
    .param p4, "offset"    # I

    .prologue
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AbsSeekBar;->mPaddingLeft:I

    move/from16 v17, v0

    sub-int v17, p1, v17

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AbsSeekBar;->mPaddingRight:I

    move/from16 v18, v0

    sub-int v4, v17, v18

    .local v4, "available":I
    invoke-virtual/range {p2 .. p2}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v15

    .local v15, "thumbWidth":I
    invoke-virtual/range {p2 .. p2}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v13

    .local v13, "thumbHeight":I
    sub-int/2addr v4, v15

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AbsSeekBar;->mThumbOffset:I

    move/from16 v17, v0

    mul-int/lit8 v17, v17, 0x2

    add-int v4, v4, v17

    int-to-float v0, v4

    move/from16 v17, v0

    mul-float v17, v17, p3

    const/high16 v18, 0x3f000000    # 0.5f

    add-float v17, v17, v18

    move/from16 v0, v17

    float-to-int v14, v0

    .local v14, "thumbPos":I
    const/high16 v17, -0x80000000

    move/from16 v0, p4

    move/from16 v1, v17

    if-ne v0, v1, :cond_1

    invoke-virtual/range {p2 .. p2}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v11

    .local v11, "oldBounds":Landroid/graphics/Rect;
    iget v0, v11, Landroid/graphics/Rect;->top:I

    move/from16 v16, v0

    .local v16, "top":I
    iget v6, v11, Landroid/graphics/Rect;->bottom:I

    .end local v11    # "oldBounds":Landroid/graphics/Rect;
    .local v6, "bottom":I
    :goto_0
    invoke-virtual/range {p0 .. p0}, Landroid/widget/AbsSeekBar;->isLayoutRtl()Z

    move-result v17

    if-eqz v17, :cond_2

    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/widget/AbsSeekBar;->mMirrorForRtl:Z

    move/from16 v17, v0

    if-eqz v17, :cond_2

    sub-int v8, v4, v14

    .local v8, "left":I
    :goto_1
    add-int v12, v8, v15

    .local v12, "right":I
    invoke-virtual/range {p0 .. p0}, Landroid/widget/AbsSeekBar;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v5

    .local v5, "background":Landroid/graphics/drawable/Drawable;
    if-eqz v5, :cond_0

    invoke-virtual/range {p2 .. p2}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v7

    .local v7, "bounds":Landroid/graphics/Rect;
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AbsSeekBar;->mPaddingLeft:I

    move/from16 v17, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AbsSeekBar;->mThumbOffset:I

    move/from16 v18, v0

    sub-int v9, v17, v18

    .local v9, "offsetX":I
    move-object/from16 v0, p0

    iget v10, v0, Landroid/widget/AbsSeekBar;->mPaddingTop:I

    .local v10, "offsetY":I
    add-int v17, v8, v9

    add-int v18, v16, v10

    add-int v19, v12, v9

    add-int v20, v6, v10

    move/from16 v0, v17

    move/from16 v1, v18

    move/from16 v2, v19

    move/from16 v3, v20

    invoke-virtual {v5, v0, v1, v2, v3}, Landroid/graphics/drawable/Drawable;->setHotspotBounds(IIII)V

    .end local v7    # "bounds":Landroid/graphics/Rect;
    .end local v9    # "offsetX":I
    .end local v10    # "offsetY":I
    :cond_0
    move-object/from16 v0, p2

    move/from16 v1, v16

    invoke-virtual {v0, v8, v1, v12, v6}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    return-void

    .end local v5    # "background":Landroid/graphics/drawable/Drawable;
    .end local v6    # "bottom":I
    .end local v8    # "left":I
    .end local v12    # "right":I
    .end local v16    # "top":I
    :cond_1
    move/from16 v16, p4

    .restart local v16    # "top":I
    add-int v6, p4, v13

    .restart local v6    # "bottom":I
    goto :goto_0

    :cond_2
    move v8, v14

    goto :goto_1
.end method

.method private trackTouchEvent(Landroid/view/MotionEvent;)V
    .locals 8
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    invoke-virtual {p0}, Landroid/widget/AbsSeekBar;->getWidth()I

    move-result v4

    .local v4, "width":I
    iget v6, p0, Landroid/widget/AbsSeekBar;->mPaddingLeft:I

    sub-int v6, v4, v6

    iget v7, p0, Landroid/widget/AbsSeekBar;->mPaddingRight:I

    sub-int v0, v6, v7

    .local v0, "available":I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v6

    float-to-int v5, v6

    .local v5, "x":I
    const/4 v2, 0x0

    .local v2, "progress":F
    invoke-virtual {p0}, Landroid/widget/AbsSeekBar;->isLayoutRtl()Z

    move-result v6

    if-eqz v6, :cond_2

    iget-boolean v6, p0, Landroid/widget/AbsSeekBar;->mMirrorForRtl:Z

    if-eqz v6, :cond_2

    iget v6, p0, Landroid/widget/AbsSeekBar;->mPaddingRight:I

    sub-int v6, v4, v6

    if-le v5, v6, :cond_0

    const/4 v3, 0x0

    .local v3, "scale":F
    :goto_0
    invoke-virtual {p0}, Landroid/widget/AbsSeekBar;->getMax()I

    move-result v1

    .local v1, "max":I
    int-to-float v6, v1

    mul-float/2addr v6, v3

    add-float/2addr v2, v6

    int-to-float v6, v5

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v7

    float-to-int v7, v7

    int-to-float v7, v7

    invoke-direct {p0, v6, v7}, Landroid/widget/AbsSeekBar;->setHotspot(FF)V

    invoke-virtual {p0}, Landroid/widget/AbsSeekBar;->getProgress()I

    move-result v6

    float-to-int v7, v2

    invoke-virtual {p0, v6, v7}, Landroid/widget/AbsSeekBar;->updateTouchProgress(II)I

    move-result v6

    const/4 v7, 0x1

    invoke-virtual {p0, v6, v7}, Landroid/widget/AbsSeekBar;->setProgress(IZ)V

    return-void

    .end local v1    # "max":I
    .end local v3    # "scale":F
    :cond_0
    iget v6, p0, Landroid/widget/AbsSeekBar;->mPaddingLeft:I

    if-ge v5, v6, :cond_1

    const/high16 v3, 0x3f800000    # 1.0f

    .restart local v3    # "scale":F
    goto :goto_0

    .end local v3    # "scale":F
    :cond_1
    sub-int v6, v0, v5

    iget v7, p0, Landroid/widget/AbsSeekBar;->mPaddingLeft:I

    add-int/2addr v6, v7

    int-to-float v6, v6

    int-to-float v7, v0

    div-float v3, v6, v7

    .restart local v3    # "scale":F
    iget v2, p0, Landroid/widget/AbsSeekBar;->mTouchProgressOffset:F

    goto :goto_0

    .end local v3    # "scale":F
    :cond_2
    iget v6, p0, Landroid/widget/AbsSeekBar;->mPaddingLeft:I

    if-ge v5, v6, :cond_3

    const/4 v3, 0x0

    .restart local v3    # "scale":F
    goto :goto_0

    .end local v3    # "scale":F
    :cond_3
    iget v6, p0, Landroid/widget/AbsSeekBar;->mPaddingRight:I

    sub-int v6, v4, v6

    if-le v5, v6, :cond_4

    const/high16 v3, 0x3f800000    # 1.0f

    .restart local v3    # "scale":F
    goto :goto_0

    .end local v3    # "scale":F
    :cond_4
    iget v6, p0, Landroid/widget/AbsSeekBar;->mPaddingLeft:I

    sub-int v6, v5, v6

    int-to-float v6, v6

    int-to-float v7, v0

    div-float v3, v6, v7

    .restart local v3    # "scale":F
    iget v2, p0, Landroid/widget/AbsSeekBar;->mTouchProgressOffset:F

    goto :goto_0
.end method

.method private updateThumbAndTrackPos(II)V
    .locals 10
    .param p1, "w"    # I
    .param p2, "h"    # I

    .prologue
    const/4 v6, 0x0

    invoke-virtual {p0}, Landroid/widget/AbsSeekBar;->getCurrentDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v3

    .local v3, "track":Landroid/graphics/drawable/Drawable;
    iget-object v0, p0, Landroid/widget/AbsSeekBar;->mThumb:Landroid/graphics/drawable/Drawable;

    .local v0, "thumb":Landroid/graphics/drawable/Drawable;
    iget v7, p0, Landroid/widget/AbsSeekBar;->mMaxHeight:I

    iget v8, p0, Landroid/widget/AbsSeekBar;->mPaddingTop:I

    sub-int v8, p2, v8

    iget v9, p0, Landroid/widget/AbsSeekBar;->mPaddingBottom:I

    sub-int/2addr v8, v9

    invoke-static {v7, v8}, Ljava/lang/Math;->min(II)I

    move-result v4

    .local v4, "trackHeight":I
    if-nez v0, :cond_2

    move v1, v6

    .local v1, "thumbHeight":I
    :goto_0
    if-le v1, v4, :cond_3

    sub-int v7, v1, v4

    div-int/lit8 v5, v7, 0x2

    .local v5, "trackOffset":I
    const/4 v2, 0x0

    .local v2, "thumbOffset":I
    :goto_1
    if-eqz v3, :cond_0

    iget v7, p0, Landroid/widget/AbsSeekBar;->mPaddingRight:I

    sub-int v7, p1, v7

    iget v8, p0, Landroid/widget/AbsSeekBar;->mPaddingLeft:I

    sub-int/2addr v7, v8

    iget v8, p0, Landroid/widget/AbsSeekBar;->mPaddingBottom:I

    sub-int v8, p2, v8

    sub-int/2addr v8, v5

    iget v9, p0, Landroid/widget/AbsSeekBar;->mPaddingTop:I

    sub-int/2addr v8, v9

    invoke-virtual {v3, v6, v5, v7, v8}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    :cond_0
    if-eqz v0, :cond_1

    invoke-direct {p0}, Landroid/widget/AbsSeekBar;->getScale()F

    move-result v6

    invoke-direct {p0, p1, v0, v6, v2}, Landroid/widget/AbsSeekBar;->setThumbPos(ILandroid/graphics/drawable/Drawable;FI)V

    :cond_1
    return-void

    .end local v1    # "thumbHeight":I
    .end local v2    # "thumbOffset":I
    .end local v5    # "trackOffset":I
    :cond_2
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v1

    goto :goto_0

    .restart local v1    # "thumbHeight":I
    :cond_3
    const/4 v5, 0x0

    .restart local v5    # "trackOffset":I
    sub-int v7, v4, v1

    div-int/lit8 v2, v7, 0x2

    .restart local v2    # "thumbOffset":I
    goto :goto_1
.end method


# virtual methods
.method drawThumb(Landroid/graphics/Canvas;)V
    .locals 2
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    iget-object v0, p0, Landroid/widget/AbsSeekBar;->mThumb:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    iget v0, p0, Landroid/widget/AbsSeekBar;->mPaddingLeft:I

    iget v1, p0, Landroid/widget/AbsSeekBar;->mThumbOffset:I

    sub-int/2addr v0, v1

    int-to-float v0, v0

    iget v1, p0, Landroid/widget/AbsSeekBar;->mPaddingTop:I

    int-to-float v1, v1

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->translate(FF)V

    invoke-static/range {p0 .. p1}, Landroid/widget/AbsSeekBar$FlymeInjector;->drawThumb(Landroid/widget/AbsSeekBar;Landroid/graphics/Canvas;)V

    iget-object v0, p0, Landroid/widget/AbsSeekBar;->mThumb:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    :cond_0
    return-void
.end method

.method drawTrack(Landroid/graphics/Canvas;)V
    .locals 6
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    iget-object v3, p0, Landroid/widget/AbsSeekBar;->mThumb:Landroid/graphics/drawable/Drawable;

    .local v3, "thumbDrawable":Landroid/graphics/drawable/Drawable;
    if-eqz v3, :cond_0

    iget-boolean v4, p0, Landroid/widget/AbsSeekBar;->mSplitTrack:Z

    if-eqz v4, :cond_0

    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->getOpticalInsets()Landroid/graphics/Insets;

    move-result-object v0

    .local v0, "insets":Landroid/graphics/Insets;
    iget-object v2, p0, Landroid/widget/AbsSeekBar;->mTempRect:Landroid/graphics/Rect;

    .local v2, "tempRect":Landroid/graphics/Rect;
    invoke-virtual {v3, v2}, Landroid/graphics/drawable/Drawable;->copyBounds(Landroid/graphics/Rect;)V

    iget v4, p0, Landroid/widget/AbsSeekBar;->mPaddingLeft:I

    iget v5, p0, Landroid/widget/AbsSeekBar;->mThumbOffset:I

    sub-int/2addr v4, v5

    iget v5, p0, Landroid/widget/AbsSeekBar;->mPaddingTop:I

    invoke-virtual {v2, v4, v5}, Landroid/graphics/Rect;->offset(II)V

    iget v4, v2, Landroid/graphics/Rect;->left:I

    iget v5, v0, Landroid/graphics/Insets;->left:I

    add-int/2addr v4, v5

    iput v4, v2, Landroid/graphics/Rect;->left:I

    iget v4, v2, Landroid/graphics/Rect;->right:I

    iget v5, v0, Landroid/graphics/Insets;->right:I

    sub-int/2addr v4, v5

    iput v4, v2, Landroid/graphics/Rect;->right:I

    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v1

    .local v1, "saveCount":I
    sget-object v4, Landroid/graphics/Region$Op;->DIFFERENCE:Landroid/graphics/Region$Op;

    invoke-virtual {p1, v2, v4}, Landroid/graphics/Canvas;->clipRect(Landroid/graphics/Rect;Landroid/graphics/Region$Op;)Z

    invoke-super {p0, p1}, Landroid/widget/ProgressBar;->drawTrack(Landroid/graphics/Canvas;)V

    invoke-virtual {p1, v1}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .end local v0    # "insets":Landroid/graphics/Insets;
    .end local v1    # "saveCount":I
    .end local v2    # "tempRect":Landroid/graphics/Rect;
    :goto_0
    return-void

    :cond_0
    invoke-super {p0, p1}, Landroid/widget/ProgressBar;->drawTrack(Landroid/graphics/Canvas;)V

    goto :goto_0
.end method

.method public drawableHotspotChanged(FF)V
    .locals 1
    .param p1, "x"    # F
    .param p2, "y"    # F

    .prologue
    invoke-super {p0, p1, p2}, Landroid/widget/ProgressBar;->drawableHotspotChanged(FF)V

    iget-object v0, p0, Landroid/widget/AbsSeekBar;->mThumb:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/widget/AbsSeekBar;->mThumb:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1, p2}, Landroid/graphics/drawable/Drawable;->setHotspot(FF)V

    :cond_0
    return-void
.end method

.method protected drawableStateChanged()V
    .locals 4

    .prologue
    invoke-super {p0}, Landroid/widget/ProgressBar;->drawableStateChanged()V

    invoke-virtual {p0}, Landroid/widget/AbsSeekBar;->getProgressDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .local v0, "progressDrawable":Landroid/graphics/drawable/Drawable;
    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/widget/AbsSeekBar;->isEnabled()Z

    move-result v2

    if-eqz v2, :cond_2

    const/16 v2, 0xff

    :goto_0
    invoke-virtual {v0, v2}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    :cond_0
    iget-object v1, p0, Landroid/widget/AbsSeekBar;->mThumb:Landroid/graphics/drawable/Drawable;

    .local v1, "thumb":Landroid/graphics/drawable/Drawable;
    if-eqz v1, :cond_1

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {p0}, Landroid/widget/AbsSeekBar;->getDrawableState()[I

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    :cond_1
    return-void

    .end local v1    # "thumb":Landroid/graphics/drawable/Drawable;
    :cond_2
    const/high16 v2, 0x437f0000    # 255.0f

    iget v3, p0, Landroid/widget/AbsSeekBar;->mDisabledAlpha:F

    mul-float/2addr v2, v3

    float-to-int v2, v2

    goto :goto_0
.end method

.method public getKeyProgressIncrement()I
    .locals 1

    .prologue
    iget v0, p0, Landroid/widget/AbsSeekBar;->mKeyProgressIncrement:I

    return v0
.end method

.method public getSplitTrack()Z
    .locals 1

    .prologue
    iget-boolean v0, p0, Landroid/widget/AbsSeekBar;->mSplitTrack:Z

    return v0
.end method

.method public getThumb()Landroid/graphics/drawable/Drawable;
    .locals 1

    .prologue
    iget-object v0, p0, Landroid/widget/AbsSeekBar;->mThumb:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public getThumbOffset()I
    .locals 1

    .prologue
    iget v0, p0, Landroid/widget/AbsSeekBar;->mThumbOffset:I

    return v0
.end method

.method public getThumbTintList()Landroid/content/res/ColorStateList;
    .locals 1

    .prologue
    iget-object v0, p0, Landroid/widget/AbsSeekBar;->mThumbTintList:Landroid/content/res/ColorStateList;

    return-object v0
.end method

.method public getThumbTintMode()Landroid/graphics/PorterDuff$Mode;
    .locals 1

    .prologue
    iget-object v0, p0, Landroid/widget/AbsSeekBar;->mThumbTintMode:Landroid/graphics/PorterDuff$Mode;

    return-object v0
.end method

.method public jumpDrawablesToCurrentState()V
    .locals 1

    .prologue
    invoke-super {p0}, Landroid/widget/ProgressBar;->jumpDrawablesToCurrentState()V

    iget-object v0, p0, Landroid/widget/AbsSeekBar;->mThumb:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/widget/AbsSeekBar;->mThumb:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->jumpToCurrentState()V

    :cond_0
    return-void
.end method

.method protected declared-synchronized onDraw(Landroid/graphics/Canvas;)V
    .locals 1
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    monitor-enter p0

    :try_start_0
    invoke-super {p0, p1}, Landroid/widget/ProgressBar;->onDraw(Landroid/graphics/Canvas;)V

    invoke-virtual {p0, p1}, Landroid/widget/AbsSeekBar;->drawThumb(Landroid/graphics/Canvas;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 1
    .param p1, "event"    # Landroid/view/accessibility/AccessibilityEvent;

    .prologue
    invoke-super {p0, p1}, Landroid/widget/ProgressBar;->onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    const-class v0, Landroid/widget/AbsSeekBar;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityEvent;->setClassName(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .locals 2
    .param p1, "info"    # Landroid/view/accessibility/AccessibilityNodeInfo;

    .prologue
    invoke-super {p0, p1}, Landroid/widget/ProgressBar;->onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    const-class v1, Landroid/widget/AbsSeekBar;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->setClassName(Ljava/lang/CharSequence;)V

    invoke-virtual {p0}, Landroid/widget/AbsSeekBar;->isEnabled()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Landroid/widget/AbsSeekBar;->getProgress()I

    move-result v0

    .local v0, "progress":I
    if-lez v0, :cond_0

    const/16 v1, 0x2000

    invoke-virtual {p1, v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(I)V

    :cond_0
    invoke-virtual {p0}, Landroid/widget/AbsSeekBar;->getMax()I

    move-result v1

    if-ge v0, v1, :cond_1

    const/16 v1, 0x1000

    invoke-virtual {p1, v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(I)V

    .end local v0    # "progress":I
    :cond_1
    return-void
.end method

.method onKeyChange()V
    .locals 0

    .prologue
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 3
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    const/4 v1, 0x1

    invoke-virtual {p0}, Landroid/widget/AbsSeekBar;->isEnabled()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {p0}, Landroid/widget/AbsSeekBar;->getProgress()I

    move-result v0

    .local v0, "progress":I
    packed-switch p1, :pswitch_data_0

    .end local v0    # "progress":I
    :cond_0
    invoke-super {p0, p1, p2}, Landroid/widget/ProgressBar;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v1

    :goto_0
    return v1

    .restart local v0    # "progress":I
    :pswitch_0
    if-lez v0, :cond_0

    iget v2, p0, Landroid/widget/AbsSeekBar;->mKeyProgressIncrement:I

    sub-int v2, v0, v2

    invoke-virtual {p0, v2, v1}, Landroid/widget/AbsSeekBar;->setProgress(IZ)V

    invoke-virtual {p0}, Landroid/widget/AbsSeekBar;->onKeyChange()V

    goto :goto_0

    :pswitch_1
    invoke-virtual {p0}, Landroid/widget/AbsSeekBar;->getMax()I

    move-result v2

    if-ge v0, v2, :cond_0

    iget v2, p0, Landroid/widget/AbsSeekBar;->mKeyProgressIncrement:I

    add-int/2addr v2, v0

    invoke-virtual {p0, v2, v1}, Landroid/widget/AbsSeekBar;->setProgress(IZ)V

    invoke-virtual {p0}, Landroid/widget/AbsSeekBar;->onKeyChange()V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x15
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method protected declared-synchronized onMeasure(II)V
    .locals 7
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    const/4 v3, 0x0

    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Landroid/widget/AbsSeekBar;->getCurrentDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .local v0, "d":Landroid/graphics/drawable/Drawable;
    iget-object v4, p0, Landroid/widget/AbsSeekBar;->mThumb:Landroid/graphics/drawable/Drawable;

    if-nez v4, :cond_1

    .local v3, "thumbHeight":I
    :goto_0
    const/4 v2, 0x0

    .local v2, "dw":I
    const/4 v1, 0x0

    .local v1, "dh":I
    if-eqz v0, :cond_0

    iget v4, p0, Landroid/widget/AbsSeekBar;->mMinWidth:I

    iget v5, p0, Landroid/widget/AbsSeekBar;->mMaxWidth:I

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v6

    invoke-static {v5, v6}, Ljava/lang/Math;->min(II)I

    move-result v5

    invoke-static {v4, v5}, Ljava/lang/Math;->max(II)I

    move-result v2

    iget v4, p0, Landroid/widget/AbsSeekBar;->mMinHeight:I

    iget v5, p0, Landroid/widget/AbsSeekBar;->mMaxHeight:I

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v6

    invoke-static {v5, v6}, Ljava/lang/Math;->min(II)I

    move-result v5

    invoke-static {v4, v5}, Ljava/lang/Math;->max(II)I

    move-result v1

    invoke-static {v3, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    :cond_0
    iget v4, p0, Landroid/widget/AbsSeekBar;->mPaddingLeft:I

    iget v5, p0, Landroid/widget/AbsSeekBar;->mPaddingRight:I

    add-int/2addr v4, v5

    add-int/2addr v2, v4

    iget v4, p0, Landroid/widget/AbsSeekBar;->mPaddingTop:I

    iget v5, p0, Landroid/widget/AbsSeekBar;->mPaddingBottom:I

    add-int/2addr v4, v5

    add-int/2addr v1, v4

    const/4 v4, 0x0

    invoke-static {v2, p1, v4}, Landroid/widget/AbsSeekBar;->resolveSizeAndState(III)I

    move-result v4

    const/4 v5, 0x0

    invoke-static {v1, p2, v5}, Landroid/widget/AbsSeekBar;->resolveSizeAndState(III)I

    move-result v5

    invoke-virtual {p0, v4, v5}, Landroid/widget/AbsSeekBar;->setMeasuredDimension(II)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    .end local v1    # "dh":I
    .end local v2    # "dw":I
    .end local v3    # "thumbHeight":I
    :cond_1
    :try_start_1
    iget-object v4, p0, Landroid/widget/AbsSeekBar;->mThumb:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v4}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v3

    goto :goto_0

    .end local v0    # "d":Landroid/graphics/drawable/Drawable;
    :catchall_0
    move-exception v4

    monitor-exit p0

    throw v4
.end method

.method onProgressRefresh(FZ)V
    .locals 3
    .param p1, "scale"    # F
    .param p2, "fromUser"    # Z

    .prologue
    invoke-super {p0, p1, p2}, Landroid/widget/ProgressBar;->onProgressRefresh(FZ)V

    iget-object v0, p0, Landroid/widget/AbsSeekBar;->mThumb:Landroid/graphics/drawable/Drawable;

    .local v0, "thumb":Landroid/graphics/drawable/Drawable;
    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/widget/AbsSeekBar;->getWidth()I

    move-result v1

    const/high16 v2, -0x80000000

    invoke-direct {p0, v1, v0, p1, v2}, Landroid/widget/AbsSeekBar;->setThumbPos(ILandroid/graphics/drawable/Drawable;FI)V

    invoke-virtual {p0}, Landroid/widget/AbsSeekBar;->invalidate()V

    :cond_0
    return-void
.end method

.method public onResolveDrawables(I)V
    .locals 1
    .param p1, "layoutDirection"    # I

    .prologue
    invoke-super {p0, p1}, Landroid/widget/ProgressBar;->onResolveDrawables(I)V

    iget-object v0, p0, Landroid/widget/AbsSeekBar;->mThumb:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/widget/AbsSeekBar;->mThumb:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setLayoutDirection(I)V

    :cond_0
    return-void
.end method

.method public onRtlPropertiesChanged(I)V
    .locals 4
    .param p1, "layoutDirection"    # I

    .prologue
    invoke-super {p0, p1}, Landroid/widget/ProgressBar;->onRtlPropertiesChanged(I)V

    iget-object v0, p0, Landroid/widget/AbsSeekBar;->mThumb:Landroid/graphics/drawable/Drawable;

    .local v0, "thumb":Landroid/graphics/drawable/Drawable;
    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/widget/AbsSeekBar;->getWidth()I

    move-result v1

    invoke-direct {p0}, Landroid/widget/AbsSeekBar;->getScale()F

    move-result v2

    const/high16 v3, -0x80000000

    invoke-direct {p0, v1, v0, v2, v3}, Landroid/widget/AbsSeekBar;->setThumbPos(ILandroid/graphics/drawable/Drawable;FI)V

    invoke-virtual {p0}, Landroid/widget/AbsSeekBar;->invalidate()V

    :cond_0
    return-void
.end method

.method protected onSizeChanged(IIII)V
    .locals 0
    .param p1, "w"    # I
    .param p2, "h"    # I
    .param p3, "oldw"    # I
    .param p4, "oldh"    # I

    .prologue
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/ProgressBar;->onSizeChanged(IIII)V

    invoke-direct {p0, p1, p2}, Landroid/widget/AbsSeekBar;->updateThumbAndTrackPos(II)V

    return-void
.end method

.method onStartTrackingTouch()V
    .locals 1

    .prologue
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/widget/AbsSeekBar;->mIsDragging:Z

    return-void
.end method

.method onStopTrackingTouch()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/widget/AbsSeekBar;->mIsDragging:Z

    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 4
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    iget-boolean v3, p0, Landroid/widget/AbsSeekBar;->mIsUserSeekable:Z

    if-eqz v3, :cond_0

    invoke-virtual {p0}, Landroid/widget/AbsSeekBar;->isEnabled()Z

    move-result v3

    if-nez v3, :cond_2

    :cond_0
    move v1, v2

    :cond_1
    :goto_0
    return v1

    :cond_2
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v3

    packed-switch v3, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    invoke-virtual {p0}, Landroid/widget/AbsSeekBar;->isInScrollingContainer()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    iput v2, p0, Landroid/widget/AbsSeekBar;->mTouchDownX:F

    invoke-static/range {p0 .. p1}, Landroid/widget/AbsSeekBar$FlymeInjector;->mzInitTouchDownStates(Landroid/widget/AbsSeekBar;Landroid/view/MotionEvent;)V

    goto :goto_0

    :cond_3
    invoke-virtual {p0, v1}, Landroid/widget/AbsSeekBar;->setPressed(Z)V

    iget-object v2, p0, Landroid/widget/AbsSeekBar;->mThumb:Landroid/graphics/drawable/Drawable;

    if-eqz v2, :cond_4

    iget-object v2, p0, Landroid/widget/AbsSeekBar;->mThumb:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v2

    invoke-virtual {p0, v2}, Landroid/widget/AbsSeekBar;->invalidate(Landroid/graphics/Rect;)V

    invoke-static/range {p0 .. p0}, Landroid/widget/AbsSeekBar$FlymeInjector;->invalidateThumb(Landroid/widget/AbsSeekBar;)V

    :cond_4
    invoke-virtual {p0}, Landroid/widget/AbsSeekBar;->onStartTrackingTouch()V

    invoke-static/range {p0 .. p1}, Landroid/widget/AbsSeekBar$FlymeInjector;->mzInitTouchDownStates2(Landroid/widget/AbsSeekBar;Landroid/view/MotionEvent;)V

    invoke-direct {p0}, Landroid/widget/AbsSeekBar;->attemptClaimDrag()V

    goto :goto_0

    :pswitch_1
    iget-boolean v2, p0, Landroid/widget/AbsSeekBar;->mIsDragging:Z

    if-eqz v2, :cond_5

    invoke-static/range {p0 .. p1}, Landroid/widget/AbsSeekBar$FlymeInjector;->mzProcessTouchAction(Landroid/widget/AbsSeekBar;Landroid/view/MotionEvent;)V

    goto :goto_0

    :cond_5
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    .local v0, "x":F
    iget v2, p0, Landroid/widget/AbsSeekBar;->mTouchDownX:F

    sub-float v2, v0, v2

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v2

    iget v3, p0, Landroid/widget/AbsSeekBar;->mScaledTouchSlop:I

    int-to-float v3, v3

    cmpl-float v2, v2, v3

    if-lez v2, :cond_1

    invoke-virtual {p0, v1}, Landroid/widget/AbsSeekBar;->setPressed(Z)V

    iget-object v2, p0, Landroid/widget/AbsSeekBar;->mThumb:Landroid/graphics/drawable/Drawable;

    if-eqz v2, :cond_6

    iget-object v2, p0, Landroid/widget/AbsSeekBar;->mThumb:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v2

    invoke-virtual {p0, v2}, Landroid/widget/AbsSeekBar;->invalidate(Landroid/graphics/Rect;)V

    invoke-static/range {p0 .. p0}, Landroid/widget/AbsSeekBar$FlymeInjector;->invalidateThumb(Landroid/widget/AbsSeekBar;)V

    :cond_6
    invoke-virtual {p0}, Landroid/widget/AbsSeekBar;->onStartTrackingTouch()V

    invoke-direct {p0, p1}, Landroid/widget/AbsSeekBar;->trackTouchEvent(Landroid/view/MotionEvent;)V

    invoke-direct {p0}, Landroid/widget/AbsSeekBar;->attemptClaimDrag()V

    goto :goto_0

    .end local v0    # "x":F
    :pswitch_2
    iget-boolean v3, p0, Landroid/widget/AbsSeekBar;->mIsDragging:Z

    if-eqz v3, :cond_7

    invoke-static/range {p0 .. p1}, Landroid/widget/AbsSeekBar$FlymeInjector;->mzProcessTouchAction(Landroid/widget/AbsSeekBar;Landroid/view/MotionEvent;)V

    invoke-virtual {p0}, Landroid/widget/AbsSeekBar;->onStopTrackingTouch()V

    invoke-virtual {p0, v2}, Landroid/widget/AbsSeekBar;->setPressed(Z)V

    :goto_1
    invoke-virtual {p0}, Landroid/widget/AbsSeekBar;->invalidate()V

    invoke-static/range {p0 .. p0}, Landroid/widget/AbsSeekBar$FlymeInjector;->mzSetInDragoning(Landroid/widget/AbsSeekBar;)V

    goto :goto_0

    :cond_7
    invoke-virtual {p0}, Landroid/widget/AbsSeekBar;->onStartTrackingTouch()V

    invoke-direct {p0, p1}, Landroid/widget/AbsSeekBar;->trackTouchEvent(Landroid/view/MotionEvent;)V

    invoke-virtual {p0}, Landroid/widget/AbsSeekBar;->onStopTrackingTouch()V

    goto :goto_1

    :pswitch_3
    iget-boolean v3, p0, Landroid/widget/AbsSeekBar;->mIsDragging:Z

    if-eqz v3, :cond_8

    invoke-virtual {p0}, Landroid/widget/AbsSeekBar;->onStopTrackingTouch()V

    invoke-virtual {p0, v2}, Landroid/widget/AbsSeekBar;->setPressed(Z)V

    :cond_8
    invoke-virtual {p0}, Landroid/widget/AbsSeekBar;->invalidate()V

    goto/16 :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_3
    .end packed-switch
.end method

.method public performAccessibilityAction(ILandroid/os/Bundle;)Z
    .locals 6
    .param p1, "action"    # I
    .param p2, "arguments"    # Landroid/os/Bundle;

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    invoke-super {p0, p1, p2}, Landroid/widget/ProgressBar;->performAccessibilityAction(ILandroid/os/Bundle;)Z

    move-result v4

    if-eqz v4, :cond_0

    :goto_0
    return v2

    :cond_0
    invoke-virtual {p0}, Landroid/widget/AbsSeekBar;->isEnabled()Z

    move-result v4

    if-nez v4, :cond_1

    move v2, v3

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Landroid/widget/AbsSeekBar;->getProgress()I

    move-result v1

    .local v1, "progress":I
    invoke-virtual {p0}, Landroid/widget/AbsSeekBar;->getMax()I

    move-result v4

    int-to-float v4, v4

    const/high16 v5, 0x40a00000    # 5.0f

    div-float/2addr v4, v5

    invoke-static {v4}, Ljava/lang/Math;->round(F)I

    move-result v4

    invoke-static {v2, v4}, Ljava/lang/Math;->max(II)I

    move-result v0

    .local v0, "increment":I
    sparse-switch p1, :sswitch_data_0

    move v2, v3

    goto :goto_0

    :sswitch_0
    if-gtz v1, :cond_2

    move v2, v3

    goto :goto_0

    :cond_2
    sub-int v3, v1, v0

    invoke-virtual {p0, v3, v2}, Landroid/widget/AbsSeekBar;->setProgress(IZ)V

    invoke-virtual {p0}, Landroid/widget/AbsSeekBar;->onKeyChange()V

    goto :goto_0

    :sswitch_1
    invoke-virtual {p0}, Landroid/widget/AbsSeekBar;->getMax()I

    move-result v4

    if-lt v1, v4, :cond_3

    move v2, v3

    goto :goto_0

    :cond_3
    add-int v3, v1, v0

    invoke-virtual {p0, v3, v2}, Landroid/widget/AbsSeekBar;->setProgress(IZ)V

    invoke-virtual {p0}, Landroid/widget/AbsSeekBar;->onKeyChange()V

    goto :goto_0

    :sswitch_data_0
    .sparse-switch
        0x1000 -> :sswitch_1
        0x2000 -> :sswitch_0
    .end sparse-switch
.end method

.method public setKeyProgressIncrement(I)V
    .locals 0
    .param p1, "increment"    # I

    .prologue
    if-gez p1, :cond_0

    neg-int p1, p1

    .end local p1    # "increment":I
    :cond_0
    iput p1, p0, Landroid/widget/AbsSeekBar;->mKeyProgressIncrement:I

    return-void
.end method

.method public declared-synchronized setMax(I)V
    .locals 3
    .param p1, "max"    # I

    .prologue
    monitor-enter p0

    :try_start_0
    invoke-super {p0, p1}, Landroid/widget/ProgressBar;->setMax(I)V

    iget v0, p0, Landroid/widget/AbsSeekBar;->mKeyProgressIncrement:I

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/widget/AbsSeekBar;->getMax()I

    move-result v0

    iget v1, p0, Landroid/widget/AbsSeekBar;->mKeyProgressIncrement:I

    div-int/2addr v0, v1

    const/16 v1, 0x14

    if-le v0, v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    invoke-virtual {p0}, Landroid/widget/AbsSeekBar;->getMax()I

    move-result v1

    int-to-float v1, v1

    const/high16 v2, 0x41a00000    # 20.0f

    div-float/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/widget/AbsSeekBar;->setKeyProgressIncrement(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public setSplitTrack(Z)V
    .locals 0
    .param p1, "splitTrack"    # Z

    .prologue
    iput-boolean p1, p0, Landroid/widget/AbsSeekBar;->mSplitTrack:Z

    invoke-virtual {p0}, Landroid/widget/AbsSeekBar;->invalidate()V

    return-void
.end method

.method public setThumb(Landroid/graphics/drawable/Drawable;)V
    .locals 4
    .param p1, "thumb"    # Landroid/graphics/drawable/Drawable;

    .prologue
    iget-object v2, p0, Landroid/widget/AbsSeekBar;->mThumb:Landroid/graphics/drawable/Drawable;

    if-eqz v2, :cond_4

    iget-object v2, p0, Landroid/widget/AbsSeekBar;->mThumb:Landroid/graphics/drawable/Drawable;

    if-eq p1, v2, :cond_4

    iget-object v2, p0, Landroid/widget/AbsSeekBar;->mThumb:Landroid/graphics/drawable/Drawable;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    const/4 v0, 0x1

    .local v0, "needUpdate":Z
    :goto_0
    if-eqz p1, :cond_2

    invoke-virtual {p1, p0}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    invoke-virtual {p0}, Landroid/widget/AbsSeekBar;->canResolveLayoutDirection()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {p0}, Landroid/widget/AbsSeekBar;->getLayoutDirection()I

    move-result v2

    invoke-virtual {p1, v2}, Landroid/graphics/drawable/Drawable;->setLayoutDirection(I)V

    :cond_0
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    iput v2, p0, Landroid/widget/AbsSeekBar;->mThumbOffset:I

    if-eqz v0, :cond_2

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v2

    iget-object v3, p0, Landroid/widget/AbsSeekBar;->mThumb:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v3

    if-ne v2, v3, :cond_1

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v2

    iget-object v3, p0, Landroid/widget/AbsSeekBar;->mThumb:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v3

    if-eq v2, v3, :cond_2

    :cond_1
    invoke-virtual {p0}, Landroid/widget/AbsSeekBar;->requestLayout()V

    :cond_2
    iput-object p1, p0, Landroid/widget/AbsSeekBar;->mThumb:Landroid/graphics/drawable/Drawable;

    invoke-direct {p0}, Landroid/widget/AbsSeekBar;->applyThumbTint()V

    invoke-virtual {p0}, Landroid/widget/AbsSeekBar;->invalidate()V

    if-eqz v0, :cond_3

    invoke-virtual {p0}, Landroid/widget/AbsSeekBar;->getWidth()I

    move-result v2

    invoke-virtual {p0}, Landroid/widget/AbsSeekBar;->getHeight()I

    move-result v3

    invoke-direct {p0, v2, v3}, Landroid/widget/AbsSeekBar;->updateThumbAndTrackPos(II)V

    if-eqz p1, :cond_3

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-virtual {p0}, Landroid/widget/AbsSeekBar;->getDrawableState()[I

    move-result-object v1

    .local v1, "state":[I
    invoke-virtual {p1, v1}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .end local v1    # "state":[I
    :cond_3

    invoke-static/range {p0 .. p0}, Landroid/widget/AbsSeekBar$FlymeInjector;->setThumbWidth(Landroid/widget/AbsSeekBar;)V

    return-void

    .end local v0    # "needUpdate":Z
    :cond_4
    const/4 v0, 0x0

    .restart local v0    # "needUpdate":Z
    goto :goto_0
.end method

.method public setThumbOffset(I)V
    .locals 0
    .param p1, "thumbOffset"    # I

    .prologue
    iput p1, p0, Landroid/widget/AbsSeekBar;->mThumbOffset:I

    invoke-virtual {p0}, Landroid/widget/AbsSeekBar;->invalidate()V

    return-void
.end method

.method public setThumbTintList(Landroid/content/res/ColorStateList;)V
    .locals 1
    .param p1, "tint"    # Landroid/content/res/ColorStateList;

    .prologue
    iput-object p1, p0, Landroid/widget/AbsSeekBar;->mThumbTintList:Landroid/content/res/ColorStateList;

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/widget/AbsSeekBar;->mHasThumbTint:Z

    invoke-direct {p0}, Landroid/widget/AbsSeekBar;->applyThumbTint()V

    return-void
.end method

.method public setThumbTintMode(Landroid/graphics/PorterDuff$Mode;)V
    .locals 1
    .param p1, "tintMode"    # Landroid/graphics/PorterDuff$Mode;

    .prologue
    iput-object p1, p0, Landroid/widget/AbsSeekBar;->mThumbTintMode:Landroid/graphics/PorterDuff$Mode;

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/widget/AbsSeekBar;->mHasThumbTintMode:Z

    invoke-direct {p0}, Landroid/widget/AbsSeekBar;->applyThumbTint()V

    return-void
.end method

.method protected updateTouchProgress(II)I
    .locals 0
    .param p1, "lastProgress"    # I
    .param p2, "newProgress"    # I

    .prologue
    return p2
.end method

.method protected verifyDrawable(Landroid/graphics/drawable/Drawable;)Z
    .locals 1
    .param p1, "who"    # Landroid/graphics/drawable/Drawable;

    .prologue
    iget-object v0, p0, Landroid/widget/AbsSeekBar;->mThumb:Landroid/graphics/drawable/Drawable;

    if-eq p1, v0, :cond_0

    invoke-super {p0, p1}, Landroid/widget/ProgressBar;->verifyDrawable(Landroid/graphics/drawable/Drawable;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method flymeGetFieldContext()Landroid/content/Context;
    .locals 1

    .prologue
    iget-object v0, p0, Landroid/widget/AbsSeekBar;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method flymeGetFieldKeyProgressIncrement()I
    .locals 1

    .prologue
    iget v0, p0, Landroid/widget/AbsSeekBar;->mKeyProgressIncrement:I

    return v0
.end method

.method flymeGetFieldPaddingBottom()I
    .locals 1

    .prologue
    iget v0, p0, Landroid/widget/AbsSeekBar;->mPaddingBottom:I

    return v0
.end method

.method flymeGetFieldPaddingLeft()I
    .locals 1

    .prologue
    iget v0, p0, Landroid/widget/AbsSeekBar;->mPaddingLeft:I

    return v0
.end method

.method flymeGetFieldPaddingRight()I
    .locals 1

    .prologue
    iget v0, p0, Landroid/widget/AbsSeekBar;->mPaddingRight:I

    return v0
.end method

.method flymeGetFieldPaddingTop()I
    .locals 1

    .prologue
    iget v0, p0, Landroid/widget/AbsSeekBar;->mPaddingTop:I

    return v0
.end method

.method flymeGetFieldScaledTouchSlop()I
    .locals 1

    .prologue
    iget v0, p0, Landroid/widget/AbsSeekBar;->mScaledTouchSlop:I

    return v0
.end method

.method flymeGetFieldThumbOffset()I
    .locals 1

    .prologue
    iget v0, p0, Landroid/widget/AbsSeekBar;->mThumbOffset:I

    return v0
.end method

.method flymeInvokeMethodAttemptClaimDrag()V
    .locals 0

    .prologue
    invoke-direct {p0}, Landroid/widget/AbsSeekBar;->attemptClaimDrag()V

    return-void
.end method

.method flymeInvokeMethodTrackTouchEvent(Landroid/view/MotionEvent;)V
    .locals 0
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    invoke-direct {p0, p1}, Landroid/widget/AbsSeekBar;->trackTouchEvent(Landroid/view/MotionEvent;)V

    return-void
.end method

.method public invalidateDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 1
    .param p1, "dr"    # Landroid/graphics/drawable/Drawable;

    .prologue
    invoke-super {p0, p1}, Landroid/widget/ProgressBar;->invalidateDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v0, p0, Landroid/widget/AbsSeekBar;->mThumb:Landroid/graphics/drawable/Drawable;

    if-ne p1, v0, :cond_0

    invoke-static {p0}, Landroid/widget/AbsSeekBar$FlymeInjector;->invalidateThumb(Landroid/widget/AbsSeekBar;)V

    :cond_0
    return-void
.end method

.method protected setTouchMode(I)V
    .locals 2
    .param p1, "mode"    # I

    .prologue
    iput p1, p0, Landroid/widget/AbsSeekBar;->mTouchScrollMode:I

    iget v0, p0, Landroid/widget/AbsSeekBar;->mTouchScrollMode:I

    const/4 v1, 0x1

    if-le v0, v1, :cond_0

    const/4 v0, 0x0

    iput v0, p0, Landroid/widget/AbsSeekBar;->mTouchScrollMode:I

    :cond_0
    return-void
.end method

.method flymeGetFieldThumb()Landroid/graphics/drawable/Drawable;
    .locals 1

    .prologue
    iget-object v0, p0, Landroid/widget/AbsSeekBar;->mThumb:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method
