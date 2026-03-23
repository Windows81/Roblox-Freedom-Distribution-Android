.class Landroidx/k/o$a$1;
.super Landroidx/k/n;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/k/o$a;->onPreDraw()Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroidx/c/a;

.field final synthetic b:Landroidx/k/o$a;


# direct methods
.method constructor <init>(Landroidx/k/o$a;Landroidx/c/a;)V
    .locals 0

    .line 282
    iput-object p1, p0, Landroidx/k/o$a$1;->b:Landroidx/k/o$a;

    iput-object p2, p0, Landroidx/k/o$a$1;->a:Landroidx/c/a;

    invoke-direct {p0}, Landroidx/k/n;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroidx/k/m;)V
    .locals 2

    .line 285
    iget-object v0, p0, Landroidx/k/o$a$1;->a:Landroidx/c/a;

    iget-object v1, p0, Landroidx/k/o$a$1;->b:Landroidx/k/o$a;

    iget-object v1, v1, Landroidx/k/o$a;->b:Landroid/view/ViewGroup;

    invoke-virtual {v0, v1}, Landroidx/c/a;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    .line 286
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    return-void
.end method
