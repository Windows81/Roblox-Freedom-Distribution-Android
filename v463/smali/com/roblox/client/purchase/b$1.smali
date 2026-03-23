.class Lcom/roblox/client/purchase/b$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/roblox/client/purchase/b;->a(JLjava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/roblox/client/purchase/b;


# direct methods
.method constructor <init>(Lcom/roblox/client/purchase/b;)V
    .locals 0

    .line 120
    iput-object p1, p0, Lcom/roblox/client/purchase/b$1;->a:Lcom/roblox/client/purchase/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 122
    iget-object v0, p0, Lcom/roblox/client/purchase/b$1;->a:Lcom/roblox/client/purchase/b;

    invoke-static {v0}, Lcom/roblox/client/purchase/b;->a(Lcom/roblox/client/purchase/b;)Lcom/roblox/client/purchase/a;

    move-result-object v0

    invoke-interface {v0}, Lcom/roblox/client/purchase/a;->aq()Lcom/roblox/client/r;

    move-result-object v0

    sget v1, Lcom/roblox/client/o$j;->Purchasing_RobloxProducts_Response_PurchaseSetupGooglePlay:I

    invoke-virtual {v0, v1}, Lcom/roblox/client/r;->c(I)V

    return-void
.end method
