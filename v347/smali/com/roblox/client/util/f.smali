.class public Lcom/roblox/client/util/f;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/roblox/client/util/f$a;
    }
.end annotation


# direct methods
.method public static a(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;
    .locals 10

    .prologue
    const/4 v9, 0x2

    const/4 v8, 0x1

    const/high16 v7, 0x40000000    # 2.0f

    const/4 v6, 0x0

    .line 35
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 36
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    sub-int/2addr v0, v1

    div-int/lit8 v0, v0, 0x2

    .line 37
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    sub-int/2addr v2, v1

    div-int/lit8 v2, v2, 0x2

    .line 38
    invoke-static {p0, v0, v2, v1, v1}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIII)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 39
    if-eq v2, p0, :cond_0

    .line 40
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->recycle()V

    .line 42
    :cond_0
    new-instance v3, Landroid/graphics/Paint;

    invoke-direct {v3}, Landroid/graphics/Paint;-><init>()V

    .line 43
    new-instance v0, Landroid/graphics/BitmapShader;

    sget-object v4, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    sget-object v5, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    invoke-direct {v0, v2, v4, v5}, Landroid/graphics/BitmapShader;-><init>(Landroid/graphics/Bitmap;Landroid/graphics/Shader$TileMode;Landroid/graphics/Shader$TileMode;)V

    .line 44
    invoke-virtual {v3, v0}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 45
    invoke-virtual {v3, v8}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 48
    if-eq p1, v8, :cond_1

    if-ne p1, v9, :cond_3

    .line 49
    :cond_1
    div-int/lit8 v0, v1, 0x2

    .line 55
    :goto_0
    sget-object v4, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v0, v1, v4}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 56
    new-instance v4, Landroid/graphics/Canvas;

    invoke-direct {v4, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 58
    int-to-float v5, v1

    div-float/2addr v5, v7

    .line 60
    if-nez p1, :cond_4

    .line 61
    invoke-virtual {v4, v5, v5, v5, v3}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 84
    :cond_2
    :goto_1
    invoke-virtual {v2}, Landroid/graphics/Bitmap;->recycle()V

    .line 85
    return-object v0

    :cond_3
    move v0, v1

    .line 52
    goto :goto_0

    .line 63
    :cond_4
    if-ne p1, v8, :cond_5

    .line 64
    neg-int v1, v1

    div-int/lit8 v1, v1, 0x4

    int-to-float v1, v1

    invoke-virtual {v4, v1, v6}, Landroid/graphics/Canvas;->translate(FF)V

    .line 65
    div-float v1, v5, v7

    add-float/2addr v1, v5

    invoke-virtual {v4, v1, v5, v5, v3}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    goto :goto_1

    .line 67
    :cond_5
    if-ne p1, v9, :cond_6

    .line 68
    neg-int v1, v1

    div-int/lit8 v1, v1, 0x4

    int-to-float v1, v1

    invoke-virtual {v4, v1, v6}, Landroid/graphics/Canvas;->translate(FF)V

    .line 69
    div-float v1, v5, v7

    sub-float v1, v5, v1

    invoke-virtual {v4, v1, v5, v5, v3}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    goto :goto_1

    .line 71
    :cond_6
    const/4 v5, 0x3

    if-ne p1, v5, :cond_7

    .line 72
    int-to-float v5, v1

    int-to-float v6, v1

    int-to-float v1, v1

    invoke-virtual {v4, v5, v6, v1, v3}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    goto :goto_1

    .line 74
    :cond_7
    const/4 v5, 0x4

    if-ne p1, v5, :cond_8

    .line 75
    int-to-float v5, v1

    int-to-float v1, v1

    invoke-virtual {v4, v5, v6, v1, v3}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    goto :goto_1

    .line 77
    :cond_8
    const/4 v5, 0x5

    if-ne p1, v5, :cond_9

    .line 78
    int-to-float v5, v1

    int-to-float v1, v1

    invoke-virtual {v4, v6, v5, v1, v3}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    goto :goto_1

    .line 80
    :cond_9
    const/4 v5, 0x6

    if-ne p1, v5, :cond_2

    .line 81
    int-to-float v1, v1

    invoke-virtual {v4, v6, v6, v1, v3}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    goto :goto_1
.end method
