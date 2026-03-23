.class public Lcom/roblox/client/components/RbxEditText$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/roblox/client/components/RbxEditText;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "b"
.end annotation


# instance fields
.field final synthetic a:Lcom/roblox/client/components/RbxEditText;

.field private final b:Lcom/roblox/client/components/RbxEditText$a;

.field private c:[Lcom/roblox/client/components/RbxEditText$a;

.field private d:Landroid/view/View$OnTouchListener;


# direct methods
.method public constructor <init>(Lcom/roblox/client/components/RbxEditText;Landroid/view/View$OnTouchListener;Lcom/roblox/client/components/RbxEditText$a;Lcom/roblox/client/components/RbxEditText$a;Lcom/roblox/client/components/RbxEditText$a;Lcom/roblox/client/components/RbxEditText$a;)V
    .locals 2

    .prologue
    .line 486
    iput-object p1, p0, Lcom/roblox/client/components/RbxEditText$b;->a:Lcom/roblox/client/components/RbxEditText;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 472
    new-instance v0, Lcom/roblox/client/components/RbxEditText$b$1;

    invoke-direct {v0, p0}, Lcom/roblox/client/components/RbxEditText$b$1;-><init>(Lcom/roblox/client/components/RbxEditText$b;)V

    iput-object v0, p0, Lcom/roblox/client/components/RbxEditText$b;->b:Lcom/roblox/client/components/RbxEditText$a;

    .line 488
    iput-object p2, p0, Lcom/roblox/client/components/RbxEditText$b;->d:Landroid/view/View$OnTouchListener;

    .line 490
    const/4 v0, 0x4

    new-array v0, v0, [Lcom/roblox/client/components/RbxEditText$a;

    iput-object v0, p0, Lcom/roblox/client/components/RbxEditText$b;->c:[Lcom/roblox/client/components/RbxEditText$a;

    .line 492
    iget-object v0, p0, Lcom/roblox/client/components/RbxEditText$b;->c:[Lcom/roblox/client/components/RbxEditText$a;

    const/4 v1, 0x0

    if-nez p3, :cond_0

    iget-object p3, p0, Lcom/roblox/client/components/RbxEditText$b;->b:Lcom/roblox/client/components/RbxEditText$a;

    :cond_0
    aput-object p3, v0, v1

    .line 493
    iget-object v0, p0, Lcom/roblox/client/components/RbxEditText$b;->c:[Lcom/roblox/client/components/RbxEditText$a;

    const/4 v1, 0x1

    if-nez p4, :cond_1

    iget-object p4, p0, Lcom/roblox/client/components/RbxEditText$b;->b:Lcom/roblox/client/components/RbxEditText$a;

    :cond_1
    aput-object p4, v0, v1

    .line 494
    iget-object v0, p0, Lcom/roblox/client/components/RbxEditText$b;->c:[Lcom/roblox/client/components/RbxEditText$a;

    const/4 v1, 0x2

    if-nez p5, :cond_2

    iget-object p5, p0, Lcom/roblox/client/components/RbxEditText$b;->b:Lcom/roblox/client/components/RbxEditText$a;

    :cond_2
    aput-object p5, v0, v1

    .line 495
    iget-object v0, p0, Lcom/roblox/client/components/RbxEditText$b;->c:[Lcom/roblox/client/components/RbxEditText$a;

    const/4 v1, 0x3

    if-nez p6, :cond_3

    iget-object p6, p0, Lcom/roblox/client/components/RbxEditText$b;->b:Lcom/roblox/client/components/RbxEditText$a;

    :cond_3
    aput-object p6, v0, v1

    .line 496
    return-void
.end method


# virtual methods
.method public a(Landroid/view/View$OnTouchListener;)V
    .locals 0

    .prologue
    .line 499
    iput-object p1, p0, Lcom/roblox/client/components/RbxEditText$b;->d:Landroid/view/View$OnTouchListener;

    .line 500
    return-void
.end method

.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 8

    .prologue
    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 506
    const-class v0, Landroid/widget/TextView;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 553
    :cond_0
    :goto_0
    return v4

    :cond_1
    move-object v0, p1

    .line 510
    check-cast v0, Landroid/widget/TextView;

    .line 512
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    if-ne v1, v5, :cond_0

    .line 516
    invoke-virtual {v0}, Landroid/widget/TextView;->getCompoundDrawables()[Landroid/graphics/drawable/Drawable;

    move-result-object v1

    aget-object v1, v1, v4

    .line 517
    if-eqz v1, :cond_2

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawX()F

    move-result v2

    invoke-virtual {v0}, Landroid/widget/TextView;->getLeft()I

    move-result v3

    .line 518
    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v1

    add-int/2addr v1, v3

    int-to-float v1, v1

    cmpl-float v1, v2, v1

    if-ltz v1, :cond_2

    .line 520
    iget-object v1, p0, Lcom/roblox/client/components/RbxEditText$b;->c:[Lcom/roblox/client/components/RbxEditText$a;

    aget-object v1, v1, v4

    invoke-interface {v1}, Lcom/roblox/client/components/RbxEditText$a;->a()V

    .line 524
    :cond_2
    invoke-virtual {v0}, Landroid/widget/TextView;->getCompoundDrawables()[Landroid/graphics/drawable/Drawable;

    move-result-object v1

    aget-object v1, v1, v5

    .line 525
    if-eqz v1, :cond_3

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawX()F

    move-result v2

    invoke-virtual {v0}, Landroid/widget/TextView;->getTop()I

    move-result v3

    .line 526
    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v1

    add-int/2addr v1, v3

    int-to-float v1, v1

    cmpl-float v1, v2, v1

    if-ltz v1, :cond_3

    .line 528
    iget-object v1, p0, Lcom/roblox/client/components/RbxEditText$b;->c:[Lcom/roblox/client/components/RbxEditText$a;

    aget-object v1, v1, v5

    invoke-interface {v1}, Lcom/roblox/client/components/RbxEditText$a;->a()V

    .line 532
    :cond_3
    invoke-virtual {v0}, Landroid/widget/TextView;->getCompoundDrawables()[Landroid/graphics/drawable/Drawable;

    move-result-object v1

    aget-object v1, v1, v6

    .line 533
    if-eqz v1, :cond_4

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawX()F

    move-result v2

    invoke-virtual {v0}, Landroid/widget/TextView;->getRight()I

    move-result v3

    .line 534
    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v1

    sub-int v1, v3, v1

    int-to-float v1, v1

    cmpl-float v1, v2, v1

    if-ltz v1, :cond_4

    .line 536
    iget-object v1, p0, Lcom/roblox/client/components/RbxEditText$b;->c:[Lcom/roblox/client/components/RbxEditText$a;

    aget-object v1, v1, v6

    invoke-interface {v1}, Lcom/roblox/client/components/RbxEditText$a;->a()V

    .line 540
    :cond_4
    invoke-virtual {v0}, Landroid/widget/TextView;->getCompoundDrawables()[Landroid/graphics/drawable/Drawable;

    move-result-object v1

    aget-object v1, v1, v7

    .line 541
    if-eqz v1, :cond_5

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawX()F

    move-result v2

    invoke-virtual {v0}, Landroid/widget/TextView;->getBottom()I

    move-result v0

    .line 542
    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v1

    sub-int/2addr v0, v1

    int-to-float v0, v0

    cmpl-float v0, v2, v0

    if-ltz v0, :cond_5

    .line 544
    iget-object v0, p0, Lcom/roblox/client/components/RbxEditText$b;->c:[Lcom/roblox/client/components/RbxEditText$a;

    aget-object v0, v0, v7

    invoke-interface {v0}, Lcom/roblox/client/components/RbxEditText$a;->a()V

    .line 548
    :cond_5
    invoke-virtual {p1}, Landroid/view/View;->performClick()Z

    .line 549
    iget-object v0, p0, Lcom/roblox/client/components/RbxEditText$b;->d:Landroid/view/View$OnTouchListener;

    if-eqz v0, :cond_0

    .line 550
    iget-object v0, p0, Lcom/roblox/client/components/RbxEditText$b;->d:Landroid/view/View$OnTouchListener;

    invoke-interface {v0, p1, p2}, Landroid/view/View$OnTouchListener;->onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z

    goto/16 :goto_0
.end method
