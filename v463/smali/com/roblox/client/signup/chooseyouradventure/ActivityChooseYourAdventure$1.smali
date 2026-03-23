.class Lcom/roblox/client/signup/chooseyouradventure/ActivityChooseYourAdventure$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/roblox/client/signup/chooseyouradventure/ActivityChooseYourAdventure;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/roblox/client/signup/chooseyouradventure/ActivityChooseYourAdventure$a;

.field final synthetic b:Lcom/roblox/client/signup/chooseyouradventure/ActivityChooseYourAdventure;


# direct methods
.method constructor <init>(Lcom/roblox/client/signup/chooseyouradventure/ActivityChooseYourAdventure;Lcom/roblox/client/signup/chooseyouradventure/ActivityChooseYourAdventure$a;)V
    .locals 0

    .line 55
    iput-object p1, p0, Lcom/roblox/client/signup/chooseyouradventure/ActivityChooseYourAdventure$1;->b:Lcom/roblox/client/signup/chooseyouradventure/ActivityChooseYourAdventure;

    iput-object p2, p0, Lcom/roblox/client/signup/chooseyouradventure/ActivityChooseYourAdventure$1;->a:Lcom/roblox/client/signup/chooseyouradventure/ActivityChooseYourAdventure$a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 58
    iget-object p1, p0, Lcom/roblox/client/signup/chooseyouradventure/ActivityChooseYourAdventure$1;->b:Lcom/roblox/client/signup/chooseyouradventure/ActivityChooseYourAdventure;

    iget-object v0, p0, Lcom/roblox/client/signup/chooseyouradventure/ActivityChooseYourAdventure$1;->a:Lcom/roblox/client/signup/chooseyouradventure/ActivityChooseYourAdventure$a;

    invoke-static {p1, v0}, Lcom/roblox/client/signup/chooseyouradventure/ActivityChooseYourAdventure;->a(Lcom/roblox/client/signup/chooseyouradventure/ActivityChooseYourAdventure;Lcom/roblox/client/signup/chooseyouradventure/ActivityChooseYourAdventure$a;)V

    return-void
.end method
