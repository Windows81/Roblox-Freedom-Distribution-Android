.class Lcom/google/ads/interactivemedia/v3/impl/a/a$3;
.super Landroid/graphics/drawable/shapes/Shape;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/ads/interactivemedia/v3/impl/a/a;->onSizeChanged(IIII)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/google/ads/interactivemedia/v3/impl/a/a;


# direct methods
.method constructor <init>(Lcom/google/ads/interactivemedia/v3/impl/a/a;)V
    .locals 0

    .prologue
    .line 129
    iput-object p1, p0, Lcom/google/ads/interactivemedia/v3/impl/a/a$3;->a:Lcom/google/ads/interactivemedia/v3/impl/a/a;

    invoke-direct {p0}, Landroid/graphics/drawable/shapes/Shape;-><init>()V

    return-void
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;Landroid/graphics/Paint;)V
    .locals 6

    .prologue
    .line 132
    const/4 v1, 0x0

    invoke-virtual {p0}, Lcom/google/ads/interactivemedia/v3/impl/a/a$3;->getHeight()F

    move-result v2

    invoke-virtual {p0}, Lcom/google/ads/interactivemedia/v3/impl/a/a$3;->getWidth()F

    move-result v3

    invoke-virtual {p0}, Lcom/google/ads/interactivemedia/v3/impl/a/a$3;->getHeight()F

    move-result v4

    move-object v0, p1

    move-object v5, p2

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 133
    return-void
.end method
