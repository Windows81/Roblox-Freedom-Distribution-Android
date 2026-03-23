.class public Lcom/roblox/client/components/RbxButton;
.super Landroid/widget/Button;
.source "SourceFile"


# instance fields
.field a:Lcom/roblox/client/components/RbxButton;

.field b:Lcom/roblox/client/components/o;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 15
    invoke-direct {p0, p1}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    .line 10
    iput-object v0, p0, Lcom/roblox/client/components/RbxButton;->a:Lcom/roblox/client/components/RbxButton;

    .line 11
    iput-object v0, p0, Lcom/roblox/client/components/RbxButton;->b:Lcom/roblox/client/components/o;

    .line 16
    iput-object p0, p0, Lcom/roblox/client/components/RbxButton;->a:Lcom/roblox/client/components/RbxButton;

    .line 17
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 20
    invoke-direct {p0, p1, p2}, Landroid/widget/Button;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 10
    iput-object v0, p0, Lcom/roblox/client/components/RbxButton;->a:Lcom/roblox/client/components/RbxButton;

    .line 11
    iput-object v0, p0, Lcom/roblox/client/components/RbxButton;->b:Lcom/roblox/client/components/o;

    .line 21
    invoke-static {p0, p1, p2}, Lcom/roblox/client/components/m;->a(Landroid/widget/TextView;Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 23
    invoke-direct {p0, p2}, Lcom/roblox/client/components/RbxButton;->a(Landroid/util/AttributeSet;)V

    .line 24
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 27
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/Button;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 10
    iput-object v0, p0, Lcom/roblox/client/components/RbxButton;->a:Lcom/roblox/client/components/RbxButton;

    .line 11
    iput-object v0, p0, Lcom/roblox/client/components/RbxButton;->b:Lcom/roblox/client/components/o;

    .line 28
    invoke-static {p0, p1, p2}, Lcom/roblox/client/components/m;->a(Landroid/widget/TextView;Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 30
    invoke-direct {p0, p2}, Lcom/roblox/client/components/RbxButton;->a(Landroid/util/AttributeSet;)V

    .line 31
    return-void
.end method

.method private a(Landroid/util/AttributeSet;)V
    .locals 1

    .prologue
    .line 34
    iput-object p0, p0, Lcom/roblox/client/components/RbxButton;->a:Lcom/roblox/client/components/RbxButton;

    .line 35
    new-instance v0, Lcom/roblox/client/components/o;

    invoke-direct {v0, p0, p1}, Lcom/roblox/client/components/o;-><init>(Landroid/view/View;Landroid/util/AttributeSet;)V

    iput-object v0, p0, Lcom/roblox/client/components/RbxButton;->b:Lcom/roblox/client/components/o;

    .line 36
    return-void
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .locals 1

    .prologue
    .line 47
    invoke-super {p0, p1}, Landroid/widget/Button;->draw(Landroid/graphics/Canvas;)V

    .line 48
    iget-object v0, p0, Lcom/roblox/client/components/RbxButton;->b:Lcom/roblox/client/components/o;

    invoke-virtual {v0, p1}, Lcom/roblox/client/components/o;->a(Landroid/graphics/Canvas;)V

    .line 49
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    .prologue
    .line 40
    iget-object v0, p0, Lcom/roblox/client/components/RbxButton;->b:Lcom/roblox/client/components/o;

    invoke-virtual {v0, p1}, Lcom/roblox/client/components/o;->a(Landroid/view/MotionEvent;)V

    .line 41
    invoke-super {p0, p1}, Landroid/widget/Button;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method
