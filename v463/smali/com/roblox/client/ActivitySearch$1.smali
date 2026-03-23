.class Lcom/roblox/client/ActivitySearch$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/widget/SearchView$OnQueryTextListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/roblox/client/ActivitySearch;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/roblox/client/ActivitySearch;


# direct methods
.method constructor <init>(Lcom/roblox/client/ActivitySearch;)V
    .locals 0

    .line 95
    iput-object p1, p0, Lcom/roblox/client/ActivitySearch$1;->a:Lcom/roblox/client/ActivitySearch;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onQueryTextChange(Ljava/lang/String;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public onQueryTextSubmit(Ljava/lang/String;)Z
    .locals 1

    .line 98
    iget-object v0, p0, Lcom/roblox/client/ActivitySearch$1;->a:Lcom/roblox/client/ActivitySearch;

    invoke-static {v0, p1}, Lcom/roblox/client/ActivitySearch;->a(Lcom/roblox/client/ActivitySearch;Ljava/lang/String;)V

    .line 100
    iget-object p1, p0, Lcom/roblox/client/ActivitySearch$1;->a:Lcom/roblox/client/ActivitySearch;

    invoke-static {p1}, Lcom/roblox/client/x;->a(Landroid/app/Activity;)V

    const/4 p1, 0x1

    return p1
.end method
