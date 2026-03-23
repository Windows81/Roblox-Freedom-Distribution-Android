.class Lcom/roblox/client/j/e$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/support/v7/widget/SearchView$OnQueryTextListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/roblox/client/j/e;->b()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/support/v7/widget/SearchView;

.field final synthetic b:Lcom/roblox/client/j/e;


# direct methods
.method constructor <init>(Lcom/roblox/client/j/e;Landroid/support/v7/widget/SearchView;)V
    .locals 0

    .prologue
    .line 150
    iput-object p1, p0, Lcom/roblox/client/j/e$3;->b:Lcom/roblox/client/j/e;

    iput-object p2, p0, Lcom/roblox/client/j/e$3;->a:Landroid/support/v7/widget/SearchView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onQueryTextChange(Ljava/lang/String;)Z
    .locals 1

    .prologue
    .line 158
    iget-object v0, p0, Lcom/roblox/client/j/e$3;->b:Lcom/roblox/client/j/e;

    invoke-static {v0}, Lcom/roblox/client/j/e;->a(Lcom/roblox/client/j/e;)Lcom/roblox/client/j/e$a;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/roblox/client/j/e$a;->a(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public onQueryTextSubmit(Ljava/lang/String;)Z
    .locals 2

    .prologue
    .line 153
    iget-object v0, p0, Lcom/roblox/client/j/e$3;->b:Lcom/roblox/client/j/e;

    invoke-static {v0}, Lcom/roblox/client/j/e;->a(Lcom/roblox/client/j/e;)Lcom/roblox/client/j/e$a;

    move-result-object v0

    iget-object v1, p0, Lcom/roblox/client/j/e$3;->a:Landroid/support/v7/widget/SearchView;

    invoke-interface {v0, v1, p1}, Lcom/roblox/client/j/e$a;->a(Landroid/support/v7/widget/SearchView;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method
