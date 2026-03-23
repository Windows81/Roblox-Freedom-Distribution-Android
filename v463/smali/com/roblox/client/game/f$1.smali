.class Lcom/roblox/client/game/f$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/roblox/client/game/f;->a(JLjava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/roblox/client/game/f;


# direct methods
.method constructor <init>(Lcom/roblox/client/game/f;)V
    .locals 0

    .line 486
    iput-object p1, p0, Lcom/roblox/client/game/f$1;->a:Lcom/roblox/client/game/f;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 488
    iget-object v0, p0, Lcom/roblox/client/game/f$1;->a:Lcom/roblox/client/game/f;

    invoke-virtual {v0}, Lcom/roblox/client/game/f;->a()Lcom/roblox/client/game/ActivityGame;

    move-result-object v0

    sget v1, Lcom/roblox/client/o$j;->Purchasing_RobloxProducts_Response_PurchaseSetupGooglePlay:I

    invoke-virtual {v0, v1}, Lcom/roblox/client/game/ActivityGame;->c(I)V

    return-void
.end method
