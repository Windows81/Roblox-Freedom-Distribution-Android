.class Landroid/support/c/a/i$f;
.super Landroid/graphics/drawable/Drawable$ConstantState;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/c/a/i;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "f"
.end annotation


# instance fields
.field a:I

.field b:Landroid/support/c/a/i$e;

.field c:Landroid/content/res/ColorStateList;

.field d:Landroid/graphics/PorterDuff$Mode;

.field e:Z

.field f:Landroid/graphics/Bitmap;

.field g:Landroid/content/res/ColorStateList;

.field h:Landroid/graphics/PorterDuff$Mode;

.field i:I

.field j:Z

.field k:Z

.field l:Landroid/graphics/Paint;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 1035
    invoke-direct {p0}, Landroid/graphics/drawable/Drawable$ConstantState;-><init>()V

    .line 929
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/support/c/a/i$f;->c:Landroid/content/res/ColorStateList;

    .line 930
    sget-object v0, Landroid/support/c/a/i;->a:Landroid/graphics/PorterDuff$Mode;

    iput-object v0, p0, Landroid/support/c/a/i$f;->d:Landroid/graphics/PorterDuff$Mode;

    .line 1036
    new-instance v0, Landroid/support/c/a/i$e;

    invoke-direct {v0}, Landroid/support/c/a/i$e;-><init>()V

    iput-object v0, p0, Landroid/support/c/a/i$f;->b:Landroid/support/c/a/i$e;

    .line 1037
    return-void
.end method

.method public constructor <init>(Landroid/support/c/a/i$f;)V
    .locals 3

    .prologue
    .line 947
    invoke-direct {p0}, Landroid/graphics/drawable/Drawable$ConstantState;-><init>()V

    .line 929
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/support/c/a/i$f;->c:Landroid/content/res/ColorStateList;

    .line 930
    sget-object v0, Landroid/support/c/a/i;->a:Landroid/graphics/PorterDuff$Mode;

    iput-object v0, p0, Landroid/support/c/a/i$f;->d:Landroid/graphics/PorterDuff$Mode;

    .line 948
    if-eqz p1, :cond_2

    .line 949
    iget v0, p1, Landroid/support/c/a/i$f;->a:I

    iput v0, p0, Landroid/support/c/a/i$f;->a:I

    .line 950
    new-instance v0, Landroid/support/c/a/i$e;

    iget-object v1, p1, Landroid/support/c/a/i$f;->b:Landroid/support/c/a/i$e;

    invoke-direct {v0, v1}, Landroid/support/c/a/i$e;-><init>(Landroid/support/c/a/i$e;)V

    iput-object v0, p0, Landroid/support/c/a/i$f;->b:Landroid/support/c/a/i$e;

    .line 951
    iget-object v0, p1, Landroid/support/c/a/i$f;->b:Landroid/support/c/a/i$e;

    invoke-static {v0}, Landroid/support/c/a/i$e;->a(Landroid/support/c/a/i$e;)Landroid/graphics/Paint;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 952
    iget-object v0, p0, Landroid/support/c/a/i$f;->b:Landroid/support/c/a/i$e;

    new-instance v1, Landroid/graphics/Paint;

    iget-object v2, p1, Landroid/support/c/a/i$f;->b:Landroid/support/c/a/i$e;

    invoke-static {v2}, Landroid/support/c/a/i$e;->a(Landroid/support/c/a/i$e;)Landroid/graphics/Paint;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/graphics/Paint;-><init>(Landroid/graphics/Paint;)V

    invoke-static {v0, v1}, Landroid/support/c/a/i$e;->a(Landroid/support/c/a/i$e;Landroid/graphics/Paint;)Landroid/graphics/Paint;

    .line 954
    :cond_0
    iget-object v0, p1, Landroid/support/c/a/i$f;->b:Landroid/support/c/a/i$e;

    invoke-static {v0}, Landroid/support/c/a/i$e;->b(Landroid/support/c/a/i$e;)Landroid/graphics/Paint;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 955
    iget-object v0, p0, Landroid/support/c/a/i$f;->b:Landroid/support/c/a/i$e;

    new-instance v1, Landroid/graphics/Paint;

    iget-object v2, p1, Landroid/support/c/a/i$f;->b:Landroid/support/c/a/i$e;

    invoke-static {v2}, Landroid/support/c/a/i$e;->b(Landroid/support/c/a/i$e;)Landroid/graphics/Paint;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/graphics/Paint;-><init>(Landroid/graphics/Paint;)V

    invoke-static {v0, v1}, Landroid/support/c/a/i$e;->b(Landroid/support/c/a/i$e;Landroid/graphics/Paint;)Landroid/graphics/Paint;

    .line 957
    :cond_1
    iget-object v0, p1, Landroid/support/c/a/i$f;->c:Landroid/content/res/ColorStateList;

    iput-object v0, p0, Landroid/support/c/a/i$f;->c:Landroid/content/res/ColorStateList;

    .line 958
    iget-object v0, p1, Landroid/support/c/a/i$f;->d:Landroid/graphics/PorterDuff$Mode;

    iput-object v0, p0, Landroid/support/c/a/i$f;->d:Landroid/graphics/PorterDuff$Mode;

    .line 959
    iget-boolean v0, p1, Landroid/support/c/a/i$f;->e:Z

    iput-boolean v0, p0, Landroid/support/c/a/i$f;->e:Z

    .line 961
    :cond_2
    return-void
.end method


# virtual methods
.method public a(Landroid/graphics/ColorFilter;)Landroid/graphics/Paint;
    .locals 2

    .prologue
    .line 978
    invoke-virtual {p0}, Landroid/support/c/a/i$f;->a()Z

    move-result v0

    if-nez v0, :cond_0

    if-nez p1, :cond_0

    .line 979
    const/4 v0, 0x0

    .line 988
    :goto_0
    return-object v0

    .line 982
    :cond_0
    iget-object v0, p0, Landroid/support/c/a/i$f;->l:Landroid/graphics/Paint;

    if-nez v0, :cond_1

    .line 983
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Landroid/support/c/a/i$f;->l:Landroid/graphics/Paint;

    .line 984
    iget-object v0, p0, Landroid/support/c/a/i$f;->l:Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setFilterBitmap(Z)V

    .line 986
    :cond_1
    iget-object v0, p0, Landroid/support/c/a/i$f;->l:Landroid/graphics/Paint;

    iget-object v1, p0, Landroid/support/c/a/i$f;->b:Landroid/support/c/a/i$e;

    invoke-virtual {v1}, Landroid/support/c/a/i$e;->getRootAlpha()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 987
    iget-object v0, p0, Landroid/support/c/a/i$f;->l:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    .line 988
    iget-object v0, p0, Landroid/support/c/a/i$f;->l:Landroid/graphics/Paint;

    goto :goto_0
.end method

.method public a(II)V
    .locals 3

    .prologue
    .line 992
    iget-object v0, p0, Landroid/support/c/a/i$f;->f:Landroid/graphics/Bitmap;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/graphics/Bitmap;->eraseColor(I)V

    .line 993
    new-instance v0, Landroid/graphics/Canvas;

    iget-object v1, p0, Landroid/support/c/a/i$f;->f:Landroid/graphics/Bitmap;

    invoke-direct {v0, v1}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 994
    iget-object v1, p0, Landroid/support/c/a/i$f;->b:Landroid/support/c/a/i$e;

    const/4 v2, 0x0

    invoke-virtual {v1, v0, p1, p2, v2}, Landroid/support/c/a/i$e;->a(Landroid/graphics/Canvas;IILandroid/graphics/ColorFilter;)V

    .line 995
    return-void
.end method

.method public a(Landroid/graphics/Canvas;Landroid/graphics/ColorFilter;Landroid/graphics/Rect;)V
    .locals 3

    .prologue
    .line 966
    invoke-virtual {p0, p2}, Landroid/support/c/a/i$f;->a(Landroid/graphics/ColorFilter;)Landroid/graphics/Paint;

    move-result-object v0

    .line 967
    iget-object v1, p0, Landroid/support/c/a/i$f;->f:Landroid/graphics/Bitmap;

    const/4 v2, 0x0

    invoke-virtual {p1, v1, v2, p3, v0}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 968
    return-void
.end method

.method public a()Z
    .locals 2

    .prologue
    .line 971
    iget-object v0, p0, Landroid/support/c/a/i$f;->b:Landroid/support/c/a/i$e;

    invoke-virtual {v0}, Landroid/support/c/a/i$e;->getRootAlpha()I

    move-result v0

    const/16 v1, 0xff

    if-ge v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public b(II)V
    .locals 1

    .prologue
    .line 998
    iget-object v0, p0, Landroid/support/c/a/i$f;->f:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    invoke-virtual {p0, p1, p2}, Landroid/support/c/a/i$f;->c(II)Z

    move-result v0

    if-nez v0, :cond_1

    .line 999
    :cond_0
    sget-object v0, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {p1, p2, v0}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Landroid/support/c/a/i$f;->f:Landroid/graphics/Bitmap;

    .line 1001
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/c/a/i$f;->k:Z

    .line 1004
    :cond_1
    return-void
.end method

.method public b()Z
    .locals 2

    .prologue
    .line 1015
    iget-boolean v0, p0, Landroid/support/c/a/i$f;->k:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Landroid/support/c/a/i$f;->g:Landroid/content/res/ColorStateList;

    iget-object v1, p0, Landroid/support/c/a/i$f;->c:Landroid/content/res/ColorStateList;

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Landroid/support/c/a/i$f;->h:Landroid/graphics/PorterDuff$Mode;

    iget-object v1, p0, Landroid/support/c/a/i$f;->d:Landroid/graphics/PorterDuff$Mode;

    if-ne v0, v1, :cond_0

    iget-boolean v0, p0, Landroid/support/c/a/i$f;->j:Z

    iget-boolean v1, p0, Landroid/support/c/a/i$f;->e:Z

    if-ne v0, v1, :cond_0

    iget v0, p0, Landroid/support/c/a/i$f;->i:I

    iget-object v1, p0, Landroid/support/c/a/i$f;->b:Landroid/support/c/a/i$e;

    .line 1019
    invoke-virtual {v1}, Landroid/support/c/a/i$e;->getRootAlpha()I

    move-result v1

    if-ne v0, v1, :cond_0

    .line 1020
    const/4 v0, 0x1

    .line 1022
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public c()V
    .locals 1

    .prologue
    .line 1028
    iget-object v0, p0, Landroid/support/c/a/i$f;->c:Landroid/content/res/ColorStateList;

    iput-object v0, p0, Landroid/support/c/a/i$f;->g:Landroid/content/res/ColorStateList;

    .line 1029
    iget-object v0, p0, Landroid/support/c/a/i$f;->d:Landroid/graphics/PorterDuff$Mode;

    iput-object v0, p0, Landroid/support/c/a/i$f;->h:Landroid/graphics/PorterDuff$Mode;

    .line 1030
    iget-object v0, p0, Landroid/support/c/a/i$f;->b:Landroid/support/c/a/i$e;

    invoke-virtual {v0}, Landroid/support/c/a/i$e;->getRootAlpha()I

    move-result v0

    iput v0, p0, Landroid/support/c/a/i$f;->i:I

    .line 1031
    iget-boolean v0, p0, Landroid/support/c/a/i$f;->e:Z

    iput-boolean v0, p0, Landroid/support/c/a/i$f;->j:Z

    .line 1032
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/support/c/a/i$f;->k:Z

    .line 1033
    return-void
.end method

.method public c(II)Z
    .locals 1

    .prologue
    .line 1007
    iget-object v0, p0, Landroid/support/c/a/i$f;->f:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    if-ne p1, v0, :cond_0

    iget-object v0, p0, Landroid/support/c/a/i$f;->f:Landroid/graphics/Bitmap;

    .line 1008
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    if-ne p2, v0, :cond_0

    .line 1009
    const/4 v0, 0x1

    .line 1011
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getChangingConfigurations()I
    .locals 1

    .prologue
    .line 1051
    iget v0, p0, Landroid/support/c/a/i$f;->a:I

    return v0
.end method

.method public newDrawable()Landroid/graphics/drawable/Drawable;
    .locals 1

    .prologue
    .line 1041
    new-instance v0, Landroid/support/c/a/i;

    invoke-direct {v0, p0}, Landroid/support/c/a/i;-><init>(Landroid/support/c/a/i$f;)V

    return-object v0
.end method

.method public newDrawable(Landroid/content/res/Resources;)Landroid/graphics/drawable/Drawable;
    .locals 1

    .prologue
    .line 1046
    new-instance v0, Landroid/support/c/a/i;

    invoke-direct {v0, p0}, Landroid/support/c/a/i;-><init>(Landroid/support/c/a/i$f;)V

    return-object v0
.end method
