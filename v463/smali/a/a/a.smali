.class public La/a/a;
.super La/a/a/a;
.source "SourceFile"


# direct methods
.method public constructor <init>(Landroid/content/Context;La/a/b;)V
    .locals 2

    const/4 v0, 0x0

    .line 35
    move-object v1, v0

    check-cast v1, La/a/c;

    invoke-direct {p0, p1, p2, v1, v0}, La/a/a;-><init>(Landroid/content/Context;La/a/b;La/a/e/b;Ljava/util/Map;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;La/a/b;La/a/e/b;Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "La/a/b;",
            "La/a/e/b;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 93
    invoke-direct {p0, p1, p2, p3, p4}, La/a/a/a;-><init>(Landroid/content/Context;La/a/b;La/a/e/b;Ljava/util/Map;)V

    return-void
.end method


# virtual methods
.method public a(La/a/g/b/d;La/a/d/c;)V
    .locals 0

    .line 153
    invoke-super {p0, p1, p2}, La/a/a/a;->a(La/a/g/b/d;La/a/d/c;)V

    return-void
.end method
