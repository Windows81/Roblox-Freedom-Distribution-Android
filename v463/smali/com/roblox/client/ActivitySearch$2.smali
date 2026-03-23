.class Lcom/roblox/client/ActivitySearch$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


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

    .line 111
    iput-object p1, p0, Lcom/roblox/client/ActivitySearch$2;->a:Lcom/roblox/client/ActivitySearch;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    const-string p1, "searchScreen"

    const-string v0, "cancel"

    .line 114
    invoke-static {p1, v0}, Lcom/roblox/client/p;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 115
    iget-object p1, p0, Lcom/roblox/client/ActivitySearch$2;->a:Lcom/roblox/client/ActivitySearch;

    invoke-virtual {p1}, Lcom/roblox/client/ActivitySearch;->finish()V

    return-void
.end method
