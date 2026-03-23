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
    .locals 0

    .line 631
    iput-object p1, p0, Lcom/roblox/client/components/RbxEditText$b;->a:Lcom/roblox/client/components/RbxEditText;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 617
    new-instance p1, Lcom/roblox/client/components/RbxEditText$b$1;

    invoke-direct {p1, p0}, Lcom/roblox/client/components/RbxEditText$b$1;-><init>(Lcom/roblox/client/components/RbxEditText$b;)V

    iput-object p1, p0, Lcom/roblox/client/components/RbxEditText$b;->b:Lcom/roblox/client/components/RbxEditText$a;

    .line 633
    iput-object p2, p0, Lcom/roblox/client/components/RbxEditText$b;->d:Landroid/view/View$OnTouchListener;

    const/4 p2, 0x4

    new-array p2, p2, [Lcom/roblox/client/components/RbxEditText$a;

    .line 635
    iput-object p2, p0, Lcom/roblox/client/components/RbxEditText$b;->c:[Lcom/roblox/client/components/RbxEditText$a;

    if-nez p3, :cond_0

    move-object p3, p1

    :cond_0
    const/4 p1, 0x0

    aput-object p3, p2, p1

    .line 638
    iget-object p1, p0, Lcom/roblox/client/components/RbxEditText$b;->c:[Lcom/roblox/client/components/RbxEditText$a;

    const/4 p2, 0x1

    if-nez p4, :cond_1

    iget-object p4, p0, Lcom/roblox/client/components/RbxEditText$b;->b:Lcom/roblox/client/components/RbxEditText$a;

    :cond_1
    aput-object p4, p1, p2

    .line 639
    iget-object p1, p0, Lcom/roblox/client/components/RbxEditText$b;->c:[Lcom/roblox/client/components/RbxEditText$a;

    const/4 p2, 0x2

    if-nez p5, :cond_2

    iget-object p5, p0, Lcom/roblox/client/components/RbxEditText$b;->b:Lcom/roblox/client/components/RbxEditText$a;

    :cond_2
    aput-object p5, p1, p2

    .line 640
    iget-object p1, p0, Lcom/roblox/client/components/RbxEditText$b;->c:[Lcom/roblox/client/components/RbxEditText$a;

    const/4 p2, 0x3

    if-nez p6, :cond_3

    iget-object p6, p0, Lcom/roblox/client/components/RbxEditText$b;->b:Lcom/roblox/client/components/RbxEditText$a;

    :cond_3
    aput-object p6, p1, p2

    return-void
.end method


# virtual methods
.method public a(Landroid/view/View$OnTouchListener;)V
    .locals 0

    .line 644
    iput-object p1, p0, Lcom/roblox/client/components/RbxEditText$b;->d:Landroid/view/View$OnTouchListener;

    return-void
.end method

.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 6

    .line 651
    const-class v0, Landroid/widget/TextView;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 655
    :cond_0
    move-object v0, p1

    check-cast v0, Landroid/widget/TextView;

    .line 657
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_5

    .line 661
    invoke-virtual {v0}, Landroid/widget/TextView;->getCompoundDrawables()[Landroid/graphics/drawable/Drawable;

    move-result-object v2

    aget-object v2, v2, v1

    if-eqz v2, :cond_1

    .line 662
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawX()F

    move-result v4

    invoke-virtual {v0}, Landroid/widget/TextView;->getLeft()I

    move-result v5

    .line 663
    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v2

    add-int/2addr v5, v2

    int-to-float v2, v5

    cmpl-float v2, v4, v2

    if-ltz v2, :cond_1

    .line 665
    iget-object v2, p0, Lcom/roblox/client/components/RbxEditText$b;->c:[Lcom/roblox/client/components/RbxEditText$a;

    aget-object v2, v2, v1

    invoke-interface {v2}, Lcom/roblox/client/components/RbxEditText$a;->a()V

    .line 669
    :cond_1
    invoke-virtual {v0}, Landroid/widget/TextView;->getCompoundDrawables()[Landroid/graphics/drawable/Drawable;

    move-result-object v2

    aget-object v2, v2, v3

    if-eqz v2, :cond_2

    .line 670
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawX()F

    move-result v4

    invoke-virtual {v0}, Landroid/widget/TextView;->getTop()I

    move-result v5

    .line 671
    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result v2

    add-int/2addr v5, v2

    int-to-float v2, v5

    cmpl-float v2, v4, v2

    if-ltz v2, :cond_2

    .line 673
    iget-object v2, p0, Lcom/roblox/client/components/RbxEditText$b;->c:[Lcom/roblox/client/components/RbxEditText$a;

    aget-object v2, v2, v3

    invoke-interface {v2}, Lcom/roblox/client/components/RbxEditText$a;->a()V

    .line 677
    :cond_2
    invoke-virtual {v0}, Landroid/widget/TextView;->getCompoundDrawables()[Landroid/graphics/drawable/Drawable;

    move-result-object v2

    const/4 v3, 0x2

    aget-object v2, v2, v3

    if-eqz v2, :cond_3

    .line 678
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawX()F

    move-result v4

    invoke-virtual {v0}, Landroid/widget/TextView;->getRight()I

    move-result v5

    .line 679
    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v2

    sub-int/2addr v5, v2

    int-to-float v2, v5

    cmpl-float v2, v4, v2

    if-ltz v2, :cond_3

    .line 681
    iget-object v2, p0, Lcom/roblox/client/components/RbxEditText$b;->c:[Lcom/roblox/client/components/RbxEditText$a;

    aget-object v2, v2, v3

    invoke-interface {v2}, Lcom/roblox/client/components/RbxEditText$a;->a()V

    .line 685
    :cond_3
    invoke-virtual {v0}, Landroid/widget/TextView;->getCompoundDrawables()[Landroid/graphics/drawable/Drawable;

    move-result-object v2

    const/4 v3, 0x3

    aget-object v2, v2, v3

    if-eqz v2, :cond_4

    .line 686
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawX()F

    move-result v4

    invoke-virtual {v0}, Landroid/widget/TextView;->getBottom()I

    move-result v0

    .line 687
    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result v2

    sub-int/2addr v0, v2

    int-to-float v0, v0

    cmpl-float v0, v4, v0

    if-ltz v0, :cond_4

    .line 689
    iget-object v0, p0, Lcom/roblox/client/components/RbxEditText$b;->c:[Lcom/roblox/client/components/RbxEditText$a;

    aget-object v0, v0, v3

    invoke-interface {v0}, Lcom/roblox/client/components/RbxEditText$a;->a()V

    .line 693
    :cond_4
    invoke-virtual {p1}, Landroid/view/View;->performClick()Z

    .line 694
    iget-object v0, p0, Lcom/roblox/client/components/RbxEditText$b;->d:Landroid/view/View$OnTouchListener;

    if-eqz v0, :cond_5

    .line 695
    invoke-interface {v0, p1, p2}, Landroid/view/View$OnTouchListener;->onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z

    :cond_5
    return v1
.end method
