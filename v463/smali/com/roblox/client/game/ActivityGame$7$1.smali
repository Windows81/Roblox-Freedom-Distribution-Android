.class Lcom/roblox/client/game/ActivityGame$7$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/roblox/client/game/ActivityGame$7;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/roblox/client/game/ActivityGame$7;


# direct methods
.method constructor <init>(Lcom/roblox/client/game/ActivityGame$7;)V
    .locals 0

    .line 639
    iput-object p1, p0, Lcom/roblox/client/game/ActivityGame$7$1;->a:Lcom/roblox/client/game/ActivityGame$7;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 0

    .line 643
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 644
    iget-object p1, p0, Lcom/roblox/client/game/ActivityGame$7$1;->a:Lcom/roblox/client/game/ActivityGame$7;

    iget-object p1, p1, Lcom/roblox/client/game/ActivityGame$7;->b:Lcom/roblox/client/game/ActivityGame;

    invoke-static {p1}, Lcom/roblox/client/game/ActivityGame;->k(Lcom/roblox/client/game/ActivityGame;)V

    return-void
.end method
