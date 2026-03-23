.class Lcom/roblox/client/k/b$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/roblox/client/k/b;->a(Landroid/support/v7/widget/Toolbar;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/roblox/client/k/b;


# direct methods
.method constructor <init>(Lcom/roblox/client/k/b;)V
    .locals 0

    .prologue
    .line 40
    iput-object p1, p0, Lcom/roblox/client/k/b$1;->a:Lcom/roblox/client/k/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 43
    iget-object v0, p0, Lcom/roblox/client/k/b$1;->a:Lcom/roblox/client/k/b;

    invoke-virtual {v0}, Lcom/roblox/client/k/b;->getActivity()Landroid/support/v4/app/h;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/h;->onBackPressed()V

    .line 44
    return-void
.end method
