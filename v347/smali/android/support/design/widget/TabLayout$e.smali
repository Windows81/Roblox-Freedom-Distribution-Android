.class public final Landroid/support/design/widget/TabLayout$e;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/design/widget/TabLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "e"
.end annotation


# instance fields
.field a:Landroid/support/design/widget/TabLayout;

.field b:Landroid/support/design/widget/TabLayout$g;

.field private c:Ljava/lang/Object;

.field private d:Landroid/graphics/drawable/Drawable;

.field private e:Ljava/lang/CharSequence;

.field private f:Ljava/lang/CharSequence;

.field private g:I

.field private h:Landroid/view/View;


# direct methods
.method constructor <init>()V
    .locals 1

    .prologue
    .line 1255
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1249
    const/4 v0, -0x1

    iput v0, p0, Landroid/support/design/widget/TabLayout$e;->g:I

    .line 1257
    return-void
.end method


# virtual methods
.method public a(I)Landroid/support/design/widget/TabLayout$e;
    .locals 3

    .prologue
    .line 1326
    iget-object v0, p0, Landroid/support/design/widget/TabLayout$e;->b:Landroid/support/design/widget/TabLayout$g;

    invoke-virtual {v0}, Landroid/support/design/widget/TabLayout$g;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 1327
    iget-object v1, p0, Landroid/support/design/widget/TabLayout$e;->b:Landroid/support/design/widget/TabLayout$g;

    const/4 v2, 0x0

    invoke-virtual {v0, p1, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/support/design/widget/TabLayout$e;->a(Landroid/view/View;)Landroid/support/design/widget/TabLayout$e;

    move-result-object v0

    return-object v0
.end method

.method public a(Landroid/graphics/drawable/Drawable;)Landroid/support/design/widget/TabLayout$e;
    .locals 0

    .prologue
    .line 1372
    iput-object p1, p0, Landroid/support/design/widget/TabLayout$e;->d:Landroid/graphics/drawable/Drawable;

    .line 1373
    invoke-virtual {p0}, Landroid/support/design/widget/TabLayout$e;->i()V

    .line 1374
    return-object p0
.end method

.method public a(Landroid/view/View;)Landroid/support/design/widget/TabLayout$e;
    .locals 0

    .prologue
    .line 1306
    iput-object p1, p0, Landroid/support/design/widget/TabLayout$e;->h:Landroid/view/View;

    .line 1307
    invoke-virtual {p0}, Landroid/support/design/widget/TabLayout$e;->i()V

    .line 1308
    return-object p0
.end method

.method public a(Ljava/lang/CharSequence;)Landroid/support/design/widget/TabLayout$e;
    .locals 0

    .prologue
    .line 1400
    iput-object p1, p0, Landroid/support/design/widget/TabLayout$e;->e:Ljava/lang/CharSequence;

    .line 1401
    invoke-virtual {p0}, Landroid/support/design/widget/TabLayout$e;->i()V

    .line 1402
    return-object p0
.end method

.method public a(Ljava/lang/Object;)Landroid/support/design/widget/TabLayout$e;
    .locals 0

    .prologue
    .line 1275
    iput-object p1, p0, Landroid/support/design/widget/TabLayout$e;->c:Ljava/lang/Object;

    .line 1276
    return-object p0
.end method

.method public a()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 1264
    iget-object v0, p0, Landroid/support/design/widget/TabLayout$e;->c:Ljava/lang/Object;

    return-object v0
.end method

.method public b(Ljava/lang/CharSequence;)Landroid/support/design/widget/TabLayout$e;
    .locals 0

    .prologue
    .line 1468
    iput-object p1, p0, Landroid/support/design/widget/TabLayout$e;->f:Ljava/lang/CharSequence;

    .line 1469
    invoke-virtual {p0}, Landroid/support/design/widget/TabLayout$e;->i()V

    .line 1470
    return-object p0
.end method

.method public b()Landroid/view/View;
    .locals 1

    .prologue
    .line 1288
    iget-object v0, p0, Landroid/support/design/widget/TabLayout$e;->h:Landroid/view/View;

    return-object v0
.end method

.method b(I)V
    .locals 0

    .prologue
    .line 1351
    iput p1, p0, Landroid/support/design/widget/TabLayout$e;->g:I

    .line 1352
    return-void
.end method

.method public c()Landroid/graphics/drawable/Drawable;
    .locals 1

    .prologue
    .line 1337
    iget-object v0, p0, Landroid/support/design/widget/TabLayout$e;->d:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public c(I)Landroid/support/design/widget/TabLayout$e;
    .locals 2

    .prologue
    .line 1385
    iget-object v0, p0, Landroid/support/design/widget/TabLayout$e;->a:Landroid/support/design/widget/TabLayout;

    if-nez v0, :cond_0

    .line 1386
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Tab not attached to a TabLayout"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1388
    :cond_0
    iget-object v0, p0, Landroid/support/design/widget/TabLayout$e;->a:Landroid/support/design/widget/TabLayout;

    invoke-virtual {v0}, Landroid/support/design/widget/TabLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1}, Landroid/support/v7/b/a/b;->b(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/support/design/widget/TabLayout$e;->a(Landroid/graphics/drawable/Drawable;)Landroid/support/design/widget/TabLayout$e;

    move-result-object v0

    return-object v0
.end method

.method public d()I
    .locals 1

    .prologue
    .line 1347
    iget v0, p0, Landroid/support/design/widget/TabLayout$e;->g:I

    return v0
.end method

.method public d(I)Landroid/support/design/widget/TabLayout$e;
    .locals 2

    .prologue
    .line 1414
    iget-object v0, p0, Landroid/support/design/widget/TabLayout$e;->a:Landroid/support/design/widget/TabLayout;

    if-nez v0, :cond_0

    .line 1415
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Tab not attached to a TabLayout"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1417
    :cond_0
    iget-object v0, p0, Landroid/support/design/widget/TabLayout$e;->a:Landroid/support/design/widget/TabLayout;

    invoke-virtual {v0}, Landroid/support/design/widget/TabLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/support/design/widget/TabLayout$e;->a(Ljava/lang/CharSequence;)Landroid/support/design/widget/TabLayout$e;

    move-result-object v0

    return-object v0
.end method

.method public e()Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 1361
    iget-object v0, p0, Landroid/support/design/widget/TabLayout$e;->e:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public f()V
    .locals 2

    .prologue
    .line 1424
    iget-object v0, p0, Landroid/support/design/widget/TabLayout$e;->a:Landroid/support/design/widget/TabLayout;

    if-nez v0, :cond_0

    .line 1425
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Tab not attached to a TabLayout"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1427
    :cond_0
    iget-object v0, p0, Landroid/support/design/widget/TabLayout$e;->a:Landroid/support/design/widget/TabLayout;

    invoke-virtual {v0, p0}, Landroid/support/design/widget/TabLayout;->b(Landroid/support/design/widget/TabLayout$e;)V

    .line 1428
    return-void
.end method

.method public g()Z
    .locals 2

    .prologue
    .line 1434
    iget-object v0, p0, Landroid/support/design/widget/TabLayout$e;->a:Landroid/support/design/widget/TabLayout;

    if-nez v0, :cond_0

    .line 1435
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Tab not attached to a TabLayout"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1437
    :cond_0
    iget-object v0, p0, Landroid/support/design/widget/TabLayout$e;->a:Landroid/support/design/widget/TabLayout;

    invoke-virtual {v0}, Landroid/support/design/widget/TabLayout;->getSelectedTabPosition()I

    move-result v0

    iget v1, p0, Landroid/support/design/widget/TabLayout$e;->g:I

    if-ne v0, v1, :cond_1

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public h()Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 1482
    iget-object v0, p0, Landroid/support/design/widget/TabLayout$e;->f:Ljava/lang/CharSequence;

    return-object v0
.end method

.method i()V
    .locals 1

    .prologue
    .line 1486
    iget-object v0, p0, Landroid/support/design/widget/TabLayout$e;->b:Landroid/support/design/widget/TabLayout$g;

    if-eqz v0, :cond_0

    .line 1487
    iget-object v0, p0, Landroid/support/design/widget/TabLayout$e;->b:Landroid/support/design/widget/TabLayout$g;

    invoke-virtual {v0}, Landroid/support/design/widget/TabLayout$g;->b()V

    .line 1489
    :cond_0
    return-void
.end method

.method j()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 1492
    iput-object v1, p0, Landroid/support/design/widget/TabLayout$e;->a:Landroid/support/design/widget/TabLayout;

    .line 1493
    iput-object v1, p0, Landroid/support/design/widget/TabLayout$e;->b:Landroid/support/design/widget/TabLayout$g;

    .line 1494
    iput-object v1, p0, Landroid/support/design/widget/TabLayout$e;->c:Ljava/lang/Object;

    .line 1495
    iput-object v1, p0, Landroid/support/design/widget/TabLayout$e;->d:Landroid/graphics/drawable/Drawable;

    .line 1496
    iput-object v1, p0, Landroid/support/design/widget/TabLayout$e;->e:Ljava/lang/CharSequence;

    .line 1497
    iput-object v1, p0, Landroid/support/design/widget/TabLayout$e;->f:Ljava/lang/CharSequence;

    .line 1498
    const/4 v0, -0x1

    iput v0, p0, Landroid/support/design/widget/TabLayout$e;->g:I

    .line 1499
    iput-object v1, p0, Landroid/support/design/widget/TabLayout$e;->h:Landroid/view/View;

    .line 1500
    return-void
.end method
