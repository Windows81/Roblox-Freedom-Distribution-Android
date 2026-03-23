.class Lcom/roblox/client/game/ActivityGame$7;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/roblox/client/game/ActivityGame;->e(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:I

.field final synthetic b:Lcom/roblox/client/game/ActivityGame;


# direct methods
.method constructor <init>(Lcom/roblox/client/game/ActivityGame;I)V
    .locals 0

    .line 625
    iput-object p1, p0, Lcom/roblox/client/game/ActivityGame$7;->b:Lcom/roblox/client/game/ActivityGame;

    iput p2, p0, Lcom/roblox/client/game/ActivityGame$7;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 628
    invoke-static {}, Lcom/roblox/client/locale/b;->a()Lcom/roblox/client/locale/b;

    move-result-object v0

    iget-object v1, p0, Lcom/roblox/client/game/ActivityGame$7;->b:Lcom/roblox/client/game/ActivityGame;

    invoke-virtual {v0, v1}, Lcom/roblox/client/locale/b;->b(Landroid/content/Context;)V

    .line 630
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/roblox/client/game/ActivityGame$7;->b:Lcom/roblox/client/game/ActivityGame;

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    iget v1, p0, Lcom/roblox/client/game/ActivityGame$7;->a:I

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/roblox/client/game/ActivityGame$7;->b:Lcom/roblox/client/game/ActivityGame;

    sget v2, Lcom/roblox/client/o$j;->CommonUI_Messages_Action_Close:I

    .line 631
    invoke-virtual {v1, v2}, Lcom/roblox/client/game/ActivityGame;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/roblox/client/game/ActivityGame$7$2;

    invoke-direct {v2, p0}, Lcom/roblox/client/game/ActivityGame$7$2;-><init>(Lcom/roblox/client/game/ActivityGame$7;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Lcom/roblox/client/game/ActivityGame$7$1;

    invoke-direct {v1, p0}, Lcom/roblox/client/game/ActivityGame$7$1;-><init>(Lcom/roblox/client/game/ActivityGame$7;)V

    .line 639
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 646
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 647
    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    return-void
.end method
