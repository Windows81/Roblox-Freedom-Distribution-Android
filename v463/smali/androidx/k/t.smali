.class Landroidx/k/t;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field final a:Landroidx/c/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/c/a<",
            "Landroid/view/View;",
            "Landroidx/k/s;",
            ">;"
        }
    .end annotation
.end field

.field final b:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field final c:Landroidx/c/d;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/c/d<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field final d:Landroidx/c/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/c/a<",
            "Ljava/lang/String;",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>()V
    .locals 1

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    new-instance v0, Landroidx/c/a;

    invoke-direct {v0}, Landroidx/c/a;-><init>()V

    iput-object v0, p0, Landroidx/k/t;->a:Landroidx/c/a;

    .line 29
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Landroidx/k/t;->b:Landroid/util/SparseArray;

    .line 31
    new-instance v0, Landroidx/c/d;

    invoke-direct {v0}, Landroidx/c/d;-><init>()V

    iput-object v0, p0, Landroidx/k/t;->c:Landroidx/c/d;

    .line 33
    new-instance v0, Landroidx/c/a;

    invoke-direct {v0}, Landroidx/c/a;-><init>()V

    iput-object v0, p0, Landroidx/k/t;->d:Landroidx/c/a;

    return-void
.end method
