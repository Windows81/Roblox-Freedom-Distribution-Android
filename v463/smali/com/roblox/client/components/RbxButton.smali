.class public Lcom/roblox/client/components/RbxButton;
.super Landroid/widget/Button;
.source "SourceFile"


# instance fields
.field a:Lcom/roblox/client/components/RbxButton;

.field b:Lcom/roblox/client/components/i;

.field private c:Landroid/view/View$OnClickListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .line 22
    invoke-direct {p0, p1, p2}, Landroid/widget/Button;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 v0, 0x0

    .line 11
    iput-object v0, p0, Lcom/roblox/client/components/RbxButton;->a:Lcom/roblox/client/components/RbxButton;

    .line 12
    iput-object v0, p0, Lcom/roblox/client/components/RbxButton;->b:Lcom/roblox/client/components/i;

    .line 23
    invoke-static {p0, p1, p2}, Lcom/roblox/client/components/h;->a(Landroid/widget/TextView;Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 25
    invoke-direct {p0, p2}, Lcom/roblox/client/components/RbxButton;->a(Landroid/util/AttributeSet;)V

    return-void
.end method

.method private a(Landroid/util/AttributeSet;)V
    .locals 1

    .line 36
    iput-object p0, p0, Lcom/roblox/client/components/RbxButton;->a:Lcom/roblox/client/components/RbxButton;

    .line 37
    new-instance v0, Lcom/roblox/client/components/i;

    invoke-direct {v0, p0, p1}, Lcom/roblox/client/components/i;-><init>(Landroid/view/View;Landroid/util/AttributeSet;)V

    iput-object v0, p0, Lcom/roblox/client/components/RbxButton;->b:Lcom/roblox/client/components/i;

    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    const/4 v0, 0x0

    .line 61
    invoke-super {p0, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public b()V
    .locals 1

    .line 65
    iget-object v0, p0, Lcom/roblox/client/components/RbxButton;->c:Landroid/view/View$OnClickListener;

    invoke-super {p0, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .locals 1

    .line 49
    invoke-super {p0, p1}, Landroid/widget/Button;->draw(Landroid/graphics/Canvas;)V

    .line 50
    iget-object v0, p0, Lcom/roblox/client/components/RbxButton;->b:Lcom/roblox/client/components/i;

    invoke-virtual {v0, p1}, Lcom/roblox/client/components/i;->a(Landroid/graphics/Canvas;)V

    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    .line 42
    iget-object v0, p0, Lcom/roblox/client/components/RbxButton;->b:Lcom/roblox/client/components/i;

    invoke-virtual {v0, p1}, Lcom/roblox/client/components/i;->a(Landroid/view/MotionEvent;)V

    .line 43
    invoke-super {p0, p1}, Landroid/widget/Button;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

.method public setOnClickListener(Landroid/view/View$OnClickListener;)V
    .locals 0

    .line 55
    invoke-super {p0, p1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 57
    iput-object p1, p0, Lcom/roblox/client/components/RbxButton;->c:Landroid/view/View$OnClickListener;

    return-void
.end method
