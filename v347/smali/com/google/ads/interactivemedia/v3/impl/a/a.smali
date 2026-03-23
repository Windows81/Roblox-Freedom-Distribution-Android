.class public Lcom/google/ads/interactivemedia/v3/impl/a/a;
.super Landroid/widget/LinearLayout;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/ads/interactivemedia/v3/impl/a/a$a;
    }
.end annotation


# instance fields
.field private a:Lcom/google/ads/interactivemedia/v3/impl/a/d;

.field private b:Landroid/widget/TextView;

.field private c:Landroid/widget/TextView;

.field private d:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/ads/interactivemedia/v3/impl/a/a$a;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/google/ads/interactivemedia/v3/impl/a/d;)V
    .locals 2

    .prologue
    .line 42
    new-instance v0, Landroid/widget/TextView;

    invoke-direct {v0, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    new-instance v1, Landroid/widget/TextView;

    invoke-direct {v1, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    invoke-direct {p0, p1, p2, v0, v1}, Lcom/google/ads/interactivemedia/v3/impl/a/a;-><init>(Landroid/content/Context;Lcom/google/ads/interactivemedia/v3/impl/a/d;Landroid/widget/TextView;Landroid/widget/TextView;)V

    .line 43
    return-void
.end method

.method constructor <init>(Landroid/content/Context;Lcom/google/ads/interactivemedia/v3/impl/a/d;Landroid/widget/TextView;Landroid/widget/TextView;)V
    .locals 6

    .prologue
    const/16 v5, 0x10

    const/4 v4, 0x0

    const/16 v2, 0xa

    const/4 v3, -0x2

    .line 48
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 32
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/ads/interactivemedia/v3/impl/a/a;->d:Ljava/util/List;

    .line 49
    iput-object p2, p0, Lcom/google/ads/interactivemedia/v3/impl/a/a;->a:Lcom/google/ads/interactivemedia/v3/impl/a/d;

    .line 50
    iput-object p3, p0, Lcom/google/ads/interactivemedia/v3/impl/a/a;->b:Landroid/widget/TextView;

    .line 51
    iput-object p4, p0, Lcom/google/ads/interactivemedia/v3/impl/a/a;->c:Landroid/widget/TextView;

    .line 53
    iget v0, p2, Lcom/google/ads/interactivemedia/v3/impl/a/d;->i:I

    invoke-virtual {p3, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 54
    invoke-virtual {p3, v4}, Landroid/widget/TextView;->setIncludeFontPadding(Z)V

    .line 55
    invoke-virtual {p3, v5}, Landroid/widget/TextView;->setGravity(I)V

    .line 56
    sget-object v0, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {p3, v0}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 57
    invoke-virtual {p3}, Landroid/widget/TextView;->setSingleLine()V

    .line 59
    iget v0, p2, Lcom/google/ads/interactivemedia/v3/impl/a/d;->l:I

    .line 60
    invoke-virtual {p0}, Lcom/google/ads/interactivemedia/v3/impl/a/a;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v1, v1, Landroid/util/DisplayMetrics;->density:F

    .line 59
    invoke-static {v0, v1}, Lcom/google/ads/interactivemedia/v3/impl/a/c;->a(IF)I

    move-result v0

    .line 61
    invoke-virtual {p3, v0, v0, v0, v0}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 63
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-direct {v0, v3, v3, v1}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    .line 65
    invoke-virtual {p0, p3, v0}, Lcom/google/ads/interactivemedia/v3/impl/a/a;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 67
    iget-boolean v0, p2, Lcom/google/ads/interactivemedia/v3/impl/a/d;->m:Z

    if-eqz v0, :cond_0

    .line 68
    iget v0, p2, Lcom/google/ads/interactivemedia/v3/impl/a/d;->p:I

    invoke-virtual {p4, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 69
    iget v0, p2, Lcom/google/ads/interactivemedia/v3/impl/a/d;->q:F

    invoke-virtual {p4, v0}, Landroid/widget/TextView;->setTextSize(F)V

    .line 70
    iget-object v0, p2, Lcom/google/ads/interactivemedia/v3/impl/a/d;->o:Ljava/lang/String;

    invoke-virtual {p4, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 71
    invoke-virtual {p4, v4}, Landroid/widget/TextView;->setIncludeFontPadding(Z)V

    .line 72
    invoke-virtual {p4, v2, v2, v2, v2}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 73
    invoke-virtual {p4, v5}, Landroid/widget/TextView;->setGravity(I)V

    .line 74
    sget-object v0, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {p4, v0}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 75
    invoke-virtual {p4}, Landroid/widget/TextView;->setSingleLine()V

    .line 77
    new-instance v0, Landroid/graphics/drawable/ShapeDrawable;

    new-instance v1, Lcom/google/ads/interactivemedia/v3/impl/a/a$1;

    invoke-direct {v1, p0}, Lcom/google/ads/interactivemedia/v3/impl/a/a$1;-><init>(Lcom/google/ads/interactivemedia/v3/impl/a/a;)V

    invoke-direct {v0, v1}, Landroid/graphics/drawable/ShapeDrawable;-><init>(Landroid/graphics/drawable/shapes/Shape;)V

    .line 83
    invoke-virtual {v0}, Landroid/graphics/drawable/ShapeDrawable;->getPaint()Landroid/graphics/Paint;

    move-result-object v1

    iget v2, p2, Lcom/google/ads/interactivemedia/v3/impl/a/d;->f:I

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 84
    invoke-virtual {v0}, Landroid/graphics/drawable/ShapeDrawable;->getPaint()Landroid/graphics/Paint;

    move-result-object v1

    iget v2, p2, Lcom/google/ads/interactivemedia/v3/impl/a/d;->g:I

    int-to-float v2, v2

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 85
    invoke-virtual {v0}, Landroid/graphics/drawable/ShapeDrawable;->getPaint()Landroid/graphics/Paint;

    move-result-object v1

    sget-object v2, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 86
    invoke-virtual {p4, v0}, Landroid/widget/TextView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 87
    new-instance v0, Lcom/google/ads/interactivemedia/v3/impl/a/a$2;

    invoke-direct {v0, p0}, Lcom/google/ads/interactivemedia/v3/impl/a/a$2;-><init>(Lcom/google/ads/interactivemedia/v3/impl/a/a;)V

    invoke-virtual {p4, v0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 94
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v0, v3, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 96
    invoke-virtual {p4, v0}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 97
    invoke-virtual {p0, p4, v0}, Lcom/google/ads/interactivemedia/v3/impl/a/a;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 99
    :cond_0
    return-void
.end method


# virtual methods
.method protected a()V
    .locals 2

    .prologue
    .line 118
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/impl/a/a;->d:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/ads/interactivemedia/v3/impl/a/a$a;

    .line 119
    invoke-interface {v0}, Lcom/google/ads/interactivemedia/v3/impl/a/a$a;->c()V

    goto :goto_0

    .line 121
    :cond_0
    return-void
.end method

.method public a(Lcom/google/ads/interactivemedia/v3/impl/a/a$a;)V
    .locals 1

    .prologue
    .line 110
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/impl/a/a;->d:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 111
    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 102
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/impl/a/a;->b:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 103
    return-void
.end method

.method public b(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 106
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/impl/a/a;->c:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 107
    return-void
.end method

.method protected onSizeChanged(IIII)V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 125
    new-instance v0, Landroid/graphics/drawable/GradientDrawable;

    sget-object v1, Landroid/graphics/drawable/GradientDrawable$Orientation;->TOP_BOTTOM:Landroid/graphics/drawable/GradientDrawable$Orientation;

    iget-object v2, p0, Lcom/google/ads/interactivemedia/v3/impl/a/a;->a:Lcom/google/ads/interactivemedia/v3/impl/a/d;

    iget-object v2, v2, Lcom/google/ads/interactivemedia/v3/impl/a/d;->c:[I

    invoke-direct {v0, v1, v2}, Landroid/graphics/drawable/GradientDrawable;-><init>(Landroid/graphics/drawable/GradientDrawable$Orientation;[I)V

    .line 127
    invoke-virtual {v0, v4, v4, p1, p2}, Landroid/graphics/drawable/GradientDrawable;->setBounds(IIII)V

    .line 129
    new-instance v1, Lcom/google/ads/interactivemedia/v3/impl/a/a$3;

    invoke-direct {v1, p0}, Lcom/google/ads/interactivemedia/v3/impl/a/a$3;-><init>(Lcom/google/ads/interactivemedia/v3/impl/a/a;)V

    .line 135
    new-instance v2, Landroid/graphics/drawable/ShapeDrawable;

    invoke-direct {v2, v1}, Landroid/graphics/drawable/ShapeDrawable;-><init>(Landroid/graphics/drawable/shapes/Shape;)V

    .line 136
    invoke-virtual {v2}, Landroid/graphics/drawable/ShapeDrawable;->getPaint()Landroid/graphics/Paint;

    move-result-object v1

    iget-object v3, p0, Lcom/google/ads/interactivemedia/v3/impl/a/a;->a:Lcom/google/ads/interactivemedia/v3/impl/a/d;

    iget v3, v3, Lcom/google/ads/interactivemedia/v3/impl/a/d;->d:I

    invoke-virtual {v1, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 137
    invoke-virtual {v2}, Landroid/graphics/drawable/ShapeDrawable;->getPaint()Landroid/graphics/Paint;

    move-result-object v1

    iget-object v3, p0, Lcom/google/ads/interactivemedia/v3/impl/a/a;->a:Lcom/google/ads/interactivemedia/v3/impl/a/d;

    iget v3, v3, Lcom/google/ads/interactivemedia/v3/impl/a/d;->e:I

    int-to-float v3, v3

    invoke-virtual {v1, v3}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 138
    invoke-virtual {v2}, Landroid/graphics/drawable/ShapeDrawable;->getPaint()Landroid/graphics/Paint;

    move-result-object v1

    sget-object v3, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v1, v3}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 139
    invoke-virtual {v2, v4, v4, p1, p2}, Landroid/graphics/drawable/ShapeDrawable;->setBounds(IIII)V

    .line 141
    const/4 v1, 0x2

    new-array v1, v1, [Landroid/graphics/drawable/Drawable;

    aput-object v0, v1, v4

    const/4 v0, 0x1

    aput-object v2, v1, v0

    .line 142
    new-instance v0, Landroid/graphics/drawable/LayerDrawable;

    invoke-direct {v0, v1}, Landroid/graphics/drawable/LayerDrawable;-><init>([Landroid/graphics/drawable/Drawable;)V

    .line 143
    invoke-virtual {p0, v0}, Lcom/google/ads/interactivemedia/v3/impl/a/a;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 144
    return-void
.end method
