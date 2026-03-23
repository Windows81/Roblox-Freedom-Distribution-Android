.class Lcom/roblox/client/k/c$f$a;
.super Landroid/support/v7/widget/RecyclerView$ViewHolder;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/roblox/client/k/c$f;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lcom/roblox/client/k/c$f;


# direct methods
.method public constructor <init>(Lcom/roblox/client/k/c$f;Landroid/view/View;)V
    .locals 1

    .prologue
    .line 499
    iput-object p1, p0, Lcom/roblox/client/k/c$f$a;->a:Lcom/roblox/client/k/c$f;

    .line 500
    invoke-direct {p0, p2}, Landroid/support/v7/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    .line 501
    const v0, 0x7f08013a

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 502
    if-eqz v0, :cond_0

    .line 503
    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 507
    :goto_0
    return-void

    .line 505
    :cond_0
    invoke-virtual {p2, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0
.end method


# virtual methods
.method public a()Lcom/roblox/client/k/c$c;
    .locals 2

    .prologue
    .line 515
    iget-object v0, p0, Lcom/roblox/client/k/c$f$a;->itemView:Landroid/view/View;

    const v1, 0x7f080138

    invoke-virtual {v0, v1}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v0

    .line 516
    check-cast v0, Lcom/roblox/client/k/c$c;

    return-object v0
.end method

.method public a(Lcom/roblox/client/k/c$c;)V
    .locals 2

    .prologue
    .line 520
    iget-object v0, p0, Lcom/roblox/client/k/c$f$a;->itemView:Landroid/view/View;

    const v1, 0x7f080138

    invoke-virtual {v0, v1, p1}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 521
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 511
    invoke-virtual {p0}, Lcom/roblox/client/k/c$f$a;->a()Lcom/roblox/client/k/c$c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/roblox/client/k/c$c;->b()V

    .line 512
    return-void
.end method
