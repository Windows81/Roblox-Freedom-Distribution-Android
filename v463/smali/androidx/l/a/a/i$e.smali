.class abstract Landroidx/l/a/a/i$e;
.super Landroidx/l/a/a/i$d;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/l/a/a/i;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x40a
    name = "e"
.end annotation


# instance fields
.field protected m:[Landroidx/core/graphics/b$b;

.field n:Ljava/lang/String;

.field o:I


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    .line 1675
    invoke-direct {p0, v0}, Landroidx/l/a/a/i$d;-><init>(Landroidx/l/a/a/i$1;)V

    .line 1671
    iput-object v0, p0, Landroidx/l/a/a/i$e;->m:[Landroidx/core/graphics/b$b;

    return-void
.end method

.method public constructor <init>(Landroidx/l/a/a/i$e;)V
    .locals 1

    const/4 v0, 0x0

    .line 1701
    invoke-direct {p0, v0}, Landroidx/l/a/a/i$d;-><init>(Landroidx/l/a/a/i$1;)V

    .line 1671
    iput-object v0, p0, Landroidx/l/a/a/i$e;->m:[Landroidx/core/graphics/b$b;

    .line 1702
    iget-object v0, p1, Landroidx/l/a/a/i$e;->n:Ljava/lang/String;

    iput-object v0, p0, Landroidx/l/a/a/i$e;->n:Ljava/lang/String;

    .line 1703
    iget v0, p1, Landroidx/l/a/a/i$e;->o:I

    iput v0, p0, Landroidx/l/a/a/i$e;->o:I

    .line 1704
    iget-object p1, p1, Landroidx/l/a/a/i$e;->m:[Landroidx/core/graphics/b$b;

    invoke-static {p1}, Landroidx/core/graphics/b;->a([Landroidx/core/graphics/b$b;)[Landroidx/core/graphics/b$b;

    move-result-object p1

    iput-object p1, p0, Landroidx/l/a/a/i$e;->m:[Landroidx/core/graphics/b$b;

    return-void
.end method


# virtual methods
.method public a(Landroid/graphics/Path;)V
    .locals 1

    .line 1708
    invoke-virtual {p1}, Landroid/graphics/Path;->reset()V

    .line 1709
    iget-object v0, p0, Landroidx/l/a/a/i$e;->m:[Landroidx/core/graphics/b$b;

    if-eqz v0, :cond_0

    .line 1710
    invoke-static {v0, p1}, Landroidx/core/graphics/b$b;->a([Landroidx/core/graphics/b$b;Landroid/graphics/Path;)V

    :cond_0
    return-void
.end method

.method public a()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getPathData()[Landroidx/core/graphics/b$b;
    .locals 1

    .line 1732
    iget-object v0, p0, Landroidx/l/a/a/i$e;->m:[Landroidx/core/graphics/b$b;

    return-object v0
.end method

.method public getPathName()Ljava/lang/String;
    .locals 1

    .line 1715
    iget-object v0, p0, Landroidx/l/a/a/i$e;->n:Ljava/lang/String;

    return-object v0
.end method

.method public setPathData([Landroidx/core/graphics/b$b;)V
    .locals 1

    .line 1737
    iget-object v0, p0, Landroidx/l/a/a/i$e;->m:[Landroidx/core/graphics/b$b;

    invoke-static {v0, p1}, Landroidx/core/graphics/b;->a([Landroidx/core/graphics/b$b;[Landroidx/core/graphics/b$b;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1739
    invoke-static {p1}, Landroidx/core/graphics/b;->a([Landroidx/core/graphics/b$b;)[Landroidx/core/graphics/b$b;

    move-result-object p1

    iput-object p1, p0, Landroidx/l/a/a/i$e;->m:[Landroidx/core/graphics/b$b;

    goto :goto_0

    .line 1741
    :cond_0
    iget-object v0, p0, Landroidx/l/a/a/i$e;->m:[Landroidx/core/graphics/b$b;

    invoke-static {v0, p1}, Landroidx/core/graphics/b;->b([Landroidx/core/graphics/b$b;[Landroidx/core/graphics/b$b;)V

    :goto_0
    return-void
.end method
