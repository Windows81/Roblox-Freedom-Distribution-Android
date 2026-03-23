.class public Lcom/roblox/client/components/RbxLinearLayout;
.super Landroid/widget/LinearLayout;
.source "SourceFile"


# instance fields
.field private a:Lcom/roblox/client/components/i;

.field private b:F

.field private c:Z

.field private d:F

.field private e:F

.field private f:Ljava/lang/Integer;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .line 25
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p1, 0x0

    .line 17
    iput-object p1, p0, Lcom/roblox/client/components/RbxLinearLayout;->a:Lcom/roblox/client/components/i;

    const/high16 p1, 0x41a00000    # 20.0f

    .line 54
    iput p1, p0, Lcom/roblox/client/components/RbxLinearLayout;->b:F

    const/4 p1, 0x0

    .line 55
    iput-boolean p1, p0, Lcom/roblox/client/components/RbxLinearLayout;->c:Z

    .line 116
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, p0, Lcom/roblox/client/components/RbxLinearLayout;->f:Ljava/lang/Integer;

    .line 26
    new-instance p1, Lcom/roblox/client/components/i;

    invoke-direct {p1, p0, p2}, Lcom/roblox/client/components/i;-><init>(Landroid/view/View;Landroid/util/AttributeSet;)V

    iput-object p1, p0, Lcom/roblox/client/components/RbxLinearLayout;->a:Lcom/roblox/client/components/i;

    .line 27
    invoke-virtual {p0}, Lcom/roblox/client/components/RbxLinearLayout;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    sget v0, Lcom/roblox/client/o$c;->RbxGreen2:I

    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getColor(I)I

    move-result p2

    invoke-virtual {p1, p2}, Lcom/roblox/client/components/i;->a(I)V

    return-void
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .locals 4

    .line 119
    iget-boolean v0, p0, Lcom/roblox/client/components/RbxLinearLayout;->c:Z

    if-eqz v0, :cond_0

    .line 120
    new-instance v0, Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    .line 121
    iget-object v1, p0, Lcom/roblox/client/components/RbxLinearLayout;->f:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 123
    iget v1, p0, Lcom/roblox/client/components/RbxLinearLayout;->d:F

    iget v2, p0, Lcom/roblox/client/components/RbxLinearLayout;->e:F

    iget v3, p0, Lcom/roblox/client/components/RbxLinearLayout;->b:F

    invoke-virtual {p1, v1, v2, v3, v0}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 125
    :cond_0
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->draw(Landroid/graphics/Canvas;)V

    return-void
.end method

.method public getXFraction()F
    .locals 2

    .line 37
    invoke-virtual {p0}, Lcom/roblox/client/components/RbxLinearLayout;->getX()F

    move-result v0

    invoke-virtual {p0}, Lcom/roblox/client/components/RbxLinearLayout;->getWidth()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v0, v1

    return v0
.end method

.method public getYFraction()F
    .locals 2

    .line 46
    invoke-virtual {p0}, Lcom/roblox/client/components/RbxLinearLayout;->getY()F

    move-result v0

    invoke-virtual {p0}, Lcom/roblox/client/components/RbxLinearLayout;->getHeight()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v0, v1

    return v0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 0

    .line 132
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->onDraw(Landroid/graphics/Canvas;)V

    return-void
.end method

.method public setXFraction(F)V
    .locals 1

    .line 41
    invoke-virtual {p0}, Lcom/roblox/client/components/RbxLinearLayout;->getWidth()I

    move-result v0

    if-lez v0, :cond_0

    int-to-float v0, v0

    mul-float p1, p1, v0

    goto :goto_0

    :cond_0
    const p1, -0x39e3c400    # -9999.0f

    .line 42
    :goto_0
    invoke-virtual {p0, p1}, Lcom/roblox/client/components/RbxLinearLayout;->setX(F)V

    return-void
.end method

.method public setYFraction(F)V
    .locals 1

    .line 50
    invoke-virtual {p0}, Lcom/roblox/client/components/RbxLinearLayout;->getHeight()I

    move-result v0

    if-lez v0, :cond_0

    int-to-float v0, v0

    mul-float p1, p1, v0

    goto :goto_0

    :cond_0
    const p1, -0x39e3c400    # -9999.0f

    .line 51
    :goto_0
    invoke-virtual {p0, p1}, Lcom/roblox/client/components/RbxLinearLayout;->setY(F)V

    return-void
.end method
