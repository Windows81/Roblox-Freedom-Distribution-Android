.class Lcom/roblox/client/k/c$f$f;
.super Landroid/support/v7/widget/RecyclerView$ViewHolder;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/roblox/client/k/c$f;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "f"
.end annotation


# instance fields
.field public a:Landroid/widget/TextView;

.field public b:Landroid/widget/TextView;

.field final synthetic c:Lcom/roblox/client/k/c$f;


# direct methods
.method public constructor <init>(Lcom/roblox/client/k/c$f;Landroid/view/View;)V
    .locals 1

    .prologue
    .line 466
    iput-object p1, p0, Lcom/roblox/client/k/c$f$f;->c:Lcom/roblox/client/k/c$f;

    .line 467
    invoke-direct {p0, p2}, Landroid/support/v7/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    .line 468
    const v0, 0x7f0801ef

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/roblox/client/k/c$f$f;->a:Landroid/widget/TextView;

    .line 469
    const v0, 0x7f0801aa

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/roblox/client/k/c$f$f;->b:Landroid/widget/TextView;

    .line 470
    return-void
.end method
