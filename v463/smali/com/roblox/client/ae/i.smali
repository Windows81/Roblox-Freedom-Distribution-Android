.class public Lcom/roblox/client/ae/i;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/roblox/client/ae/i$a;
    }
.end annotation


# direct methods
.method public static a(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;
    .locals 11

    .line 35
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 36
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    sub-int/2addr v1, v0

    const/4 v2, 0x2

    div-int/2addr v1, v2

    .line 37
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    sub-int/2addr v3, v0

    div-int/2addr v3, v2

    .line 38
    invoke-static {p0, v1, v3, v0, v0}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIII)Landroid/graphics/Bitmap;

    move-result-object v1

    if-eq v1, p0, :cond_0

    .line 40
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->recycle()V

    .line 42
    :cond_0
    new-instance p0, Landroid/graphics/Paint;

    invoke-direct {p0}, Landroid/graphics/Paint;-><init>()V

    .line 43
    new-instance v3, Landroid/graphics/BitmapShader;

    sget-object v4, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    sget-object v5, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    invoke-direct {v3, v1, v4, v5}, Landroid/graphics/BitmapShader;-><init>(Landroid/graphics/Bitmap;Landroid/graphics/Shader$TileMode;Landroid/graphics/Shader$TileMode;)V

    .line 44
    invoke-virtual {p0, v3}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    const/4 v3, 0x1

    .line 45
    invoke-virtual {p0, v3}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    if-eq p1, v3, :cond_2

    if-ne p1, v2, :cond_1

    goto :goto_0

    :cond_1
    move v4, v0

    goto :goto_1

    .line 49
    :cond_2
    :goto_0
    div-int/lit8 v4, v0, 0x2

    .line 55
    :goto_1
    sget-object v5, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v4, v0, v5}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v4

    .line 56
    new-instance v5, Landroid/graphics/Canvas;

    invoke-direct {v5, v4}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    int-to-float v6, v0

    const/high16 v7, 0x40000000    # 2.0f

    div-float v8, v6, v7

    if-nez p1, :cond_3

    .line 61
    invoke-virtual {v5, v8, v8, v8, p0}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    goto :goto_2

    :cond_3
    const/4 v9, 0x4

    const/4 v10, 0x0

    if-ne p1, v3, :cond_4

    neg-int p1, v0

    .line 64
    div-int/2addr p1, v9

    int-to-float p1, p1

    invoke-virtual {v5, p1, v10}, Landroid/graphics/Canvas;->translate(FF)V

    div-float p1, v8, v7

    add-float/2addr p1, v8

    .line 65
    invoke-virtual {v5, p1, v8, v8, p0}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    goto :goto_2

    :cond_4
    if-ne p1, v2, :cond_5

    neg-int p1, v0

    .line 68
    div-int/2addr p1, v9

    int-to-float p1, p1

    invoke-virtual {v5, p1, v10}, Landroid/graphics/Canvas;->translate(FF)V

    div-float p1, v8, v7

    sub-float p1, v8, p1

    .line 69
    invoke-virtual {v5, p1, v8, v8, p0}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    goto :goto_2

    :cond_5
    const/4 v0, 0x3

    if-ne p1, v0, :cond_6

    .line 72
    invoke-virtual {v5, v6, v6, v6, p0}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    goto :goto_2

    :cond_6
    if-ne p1, v9, :cond_7

    .line 75
    invoke-virtual {v5, v6, v10, v6, p0}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    goto :goto_2

    :cond_7
    const/4 v0, 0x5

    if-ne p1, v0, :cond_8

    .line 78
    invoke-virtual {v5, v10, v6, v6, p0}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    goto :goto_2

    :cond_8
    const/4 v0, 0x6

    if-ne p1, v0, :cond_9

    .line 81
    invoke-virtual {v5, v10, v10, v6, p0}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 84
    :cond_9
    :goto_2
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->recycle()V

    return-object v4
.end method
