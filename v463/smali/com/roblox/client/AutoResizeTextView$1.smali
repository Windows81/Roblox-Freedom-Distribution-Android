.class Lcom/roblox/client/AutoResizeTextView$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/roblox/client/AutoResizeTextView$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/roblox/client/AutoResizeTextView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/roblox/client/AutoResizeTextView;


# direct methods
.method constructor <init>(Lcom/roblox/client/AutoResizeTextView;)V
    .locals 0

    .line 234
    iput-object p1, p0, Lcom/roblox/client/AutoResizeTextView$1;->a:Lcom/roblox/client/AutoResizeTextView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(ILandroid/graphics/RectF;)I
    .locals 9

    .line 237
    iget-object v0, p0, Lcom/roblox/client/AutoResizeTextView$1;->a:Lcom/roblox/client/AutoResizeTextView;

    invoke-static {v0}, Lcom/roblox/client/AutoResizeTextView;->a(Lcom/roblox/client/AutoResizeTextView;)Landroid/text/TextPaint;

    move-result-object v0

    int-to-float p1, p1

    invoke-virtual {v0, p1}, Landroid/text/TextPaint;->setTextSize(F)V

    .line 238
    iget-object p1, p0, Lcom/roblox/client/AutoResizeTextView$1;->a:Lcom/roblox/client/AutoResizeTextView;

    invoke-virtual {p1}, Lcom/roblox/client/AutoResizeTextView;->getText()Ljava/lang/CharSequence;

    move-result-object p1

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    .line 241
    iget-object p1, p0, Lcom/roblox/client/AutoResizeTextView$1;->a:Lcom/roblox/client/AutoResizeTextView;

    invoke-virtual {p1}, Lcom/roblox/client/AutoResizeTextView;->getTransformationMethod()Landroid/text/method/TransformationMethod;

    move-result-object p1

    .line 242
    instance-of p1, p1, Landroid/text/method/SingleLineTransformationMethod;

    const/4 v8, -0x1

    if-eqz p1, :cond_0

    .line 246
    iget-object p1, p0, Lcom/roblox/client/AutoResizeTextView$1;->a:Lcom/roblox/client/AutoResizeTextView;

    invoke-static {p1}, Lcom/roblox/client/AutoResizeTextView;->b(Lcom/roblox/client/AutoResizeTextView;)Landroid/graphics/RectF;

    move-result-object p1

    iget-object v0, p0, Lcom/roblox/client/AutoResizeTextView$1;->a:Lcom/roblox/client/AutoResizeTextView;

    invoke-static {v0}, Lcom/roblox/client/AutoResizeTextView;->a(Lcom/roblox/client/AutoResizeTextView;)Landroid/text/TextPaint;

    move-result-object v0

    invoke-virtual {v0}, Landroid/text/TextPaint;->getFontSpacing()F

    move-result v0

    iput v0, p1, Landroid/graphics/RectF;->bottom:F

    .line 247
    iget-object p1, p0, Lcom/roblox/client/AutoResizeTextView$1;->a:Lcom/roblox/client/AutoResizeTextView;

    invoke-static {p1}, Lcom/roblox/client/AutoResizeTextView;->b(Lcom/roblox/client/AutoResizeTextView;)Landroid/graphics/RectF;

    move-result-object p1

    iget-object v0, p0, Lcom/roblox/client/AutoResizeTextView$1;->a:Lcom/roblox/client/AutoResizeTextView;

    invoke-static {v0}, Lcom/roblox/client/AutoResizeTextView;->a(Lcom/roblox/client/AutoResizeTextView;)Landroid/text/TextPaint;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->measureText(Ljava/lang/String;)F

    move-result v0

    iput v0, p1, Landroid/graphics/RectF;->right:F

    goto :goto_1

    .line 249
    :cond_0
    new-instance p1, Landroid/text/StaticLayout;

    iget-object v0, p0, Lcom/roblox/client/AutoResizeTextView$1;->a:Lcom/roblox/client/AutoResizeTextView;

    invoke-static {v0}, Lcom/roblox/client/AutoResizeTextView;->a(Lcom/roblox/client/AutoResizeTextView;)Landroid/text/TextPaint;

    move-result-object v2

    iget-object v0, p0, Lcom/roblox/client/AutoResizeTextView$1;->a:Lcom/roblox/client/AutoResizeTextView;

    .line 250
    invoke-static {v0}, Lcom/roblox/client/AutoResizeTextView;->c(Lcom/roblox/client/AutoResizeTextView;)I

    move-result v3

    sget-object v4, Landroid/text/Layout$Alignment;->ALIGN_NORMAL:Landroid/text/Layout$Alignment;

    iget-object v0, p0, Lcom/roblox/client/AutoResizeTextView$1;->a:Lcom/roblox/client/AutoResizeTextView;

    invoke-static {v0}, Lcom/roblox/client/AutoResizeTextView;->d(Lcom/roblox/client/AutoResizeTextView;)F

    move-result v5

    iget-object v0, p0, Lcom/roblox/client/AutoResizeTextView$1;->a:Lcom/roblox/client/AutoResizeTextView;

    .line 251
    invoke-static {v0}, Lcom/roblox/client/AutoResizeTextView;->e(Lcom/roblox/client/AutoResizeTextView;)F

    move-result v6

    const/4 v7, 0x1

    move-object v0, p1

    invoke-direct/range {v0 .. v7}, Landroid/text/StaticLayout;-><init>(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFZ)V

    .line 259
    iget-object v0, p0, Lcom/roblox/client/AutoResizeTextView$1;->a:Lcom/roblox/client/AutoResizeTextView;

    invoke-static {v0}, Lcom/roblox/client/AutoResizeTextView;->b(Lcom/roblox/client/AutoResizeTextView;)Landroid/graphics/RectF;

    move-result-object v0

    invoke-virtual {p1}, Landroid/text/StaticLayout;->getHeight()I

    move-result v1

    int-to-float v1, v1

    iput v1, v0, Landroid/graphics/RectF;->bottom:F

    const/4 v0, 0x0

    const/4 v1, -0x1

    .line 261
    :goto_0
    invoke-virtual {p1}, Landroid/text/StaticLayout;->getLineCount()I

    move-result v2

    if-ge v0, v2, :cond_2

    int-to-float v2, v1

    .line 262
    invoke-virtual {p1, v0}, Landroid/text/StaticLayout;->getLineWidth(I)F

    move-result v3

    cmpg-float v2, v2, v3

    if-gez v2, :cond_1

    .line 263
    invoke-virtual {p1, v0}, Landroid/text/StaticLayout;->getLineWidth(I)F

    move-result v1

    float-to-int v1, v1

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 266
    :cond_2
    iget-object p1, p0, Lcom/roblox/client/AutoResizeTextView$1;->a:Lcom/roblox/client/AutoResizeTextView;

    invoke-static {p1}, Lcom/roblox/client/AutoResizeTextView;->b(Lcom/roblox/client/AutoResizeTextView;)Landroid/graphics/RectF;

    move-result-object p1

    int-to-float v0, v1

    iput v0, p1, Landroid/graphics/RectF;->right:F

    .line 269
    :goto_1
    iget-object p1, p0, Lcom/roblox/client/AutoResizeTextView$1;->a:Lcom/roblox/client/AutoResizeTextView;

    invoke-static {p1}, Lcom/roblox/client/AutoResizeTextView;->b(Lcom/roblox/client/AutoResizeTextView;)Landroid/graphics/RectF;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0, v0}, Landroid/graphics/RectF;->offsetTo(FF)V

    .line 270
    iget-object p1, p0, Lcom/roblox/client/AutoResizeTextView$1;->a:Lcom/roblox/client/AutoResizeTextView;

    invoke-static {p1}, Lcom/roblox/client/AutoResizeTextView;->b(Lcom/roblox/client/AutoResizeTextView;)Landroid/graphics/RectF;

    move-result-object p1

    invoke-virtual {p2, p1}, Landroid/graphics/RectF;->contains(Landroid/graphics/RectF;)Z

    move-result p1

    if-eqz p1, :cond_3

    return v8

    :cond_3
    const/4 p1, 0x1

    return p1
.end method
