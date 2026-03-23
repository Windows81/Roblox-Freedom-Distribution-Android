.class Landroidx/fragment/app/Fragment$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/lifecycle/j;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/fragment/app/Fragment;->b(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroidx/fragment/app/Fragment;


# direct methods
.method constructor <init>(Landroidx/fragment/app/Fragment;)V
    .locals 0

    .line 2429
    iput-object p1, p0, Landroidx/fragment/app/Fragment$3;->a:Landroidx/fragment/app/Fragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public g()Landroidx/lifecycle/g;
    .locals 3

    .line 2432
    iget-object v0, p0, Landroidx/fragment/app/Fragment$3;->a:Landroidx/fragment/app/Fragment;

    iget-object v0, v0, Landroidx/fragment/app/Fragment;->ad:Landroidx/lifecycle/k;

    if-nez v0, :cond_0

    .line 2433
    iget-object v0, p0, Landroidx/fragment/app/Fragment$3;->a:Landroidx/fragment/app/Fragment;

    new-instance v1, Landroidx/lifecycle/k;

    iget-object v2, v0, Landroidx/fragment/app/Fragment;->ae:Landroidx/lifecycle/j;

    invoke-direct {v1, v2}, Landroidx/lifecycle/k;-><init>(Landroidx/lifecycle/j;)V

    iput-object v1, v0, Landroidx/fragment/app/Fragment;->ad:Landroidx/lifecycle/k;

    .line 2435
    :cond_0
    iget-object v0, p0, Landroidx/fragment/app/Fragment$3;->a:Landroidx/fragment/app/Fragment;

    iget-object v0, v0, Landroidx/fragment/app/Fragment;->ad:Landroidx/lifecycle/k;

    return-object v0
.end method
