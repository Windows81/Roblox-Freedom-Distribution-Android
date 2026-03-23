.class Landroidx/k/q$1;
.super Landroidx/k/n;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/k/q;->e()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroidx/k/m;

.field final synthetic b:Landroidx/k/q;


# direct methods
.method constructor <init>(Landroidx/k/q;Landroidx/k/m;)V
    .locals 0

    .line 493
    iput-object p1, p0, Landroidx/k/q$1;->b:Landroidx/k/q;

    iput-object p2, p0, Landroidx/k/q$1;->a:Landroidx/k/m;

    invoke-direct {p0}, Landroidx/k/n;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroidx/k/m;)V
    .locals 1

    .line 496
    iget-object v0, p0, Landroidx/k/q$1;->a:Landroidx/k/m;

    invoke-virtual {v0}, Landroidx/k/m;->e()V

    .line 497
    invoke-virtual {p1, p0}, Landroidx/k/m;->b(Landroidx/k/m$c;)Landroidx/k/m;

    return-void
.end method
