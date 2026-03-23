.class Lcom/roblox/client/game/ActivityGame$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnSystemUiVisibilityChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/roblox/client/game/ActivityGame;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/roblox/client/game/ActivityGame;


# direct methods
.method constructor <init>(Lcom/roblox/client/game/ActivityGame;)V
    .locals 0

    .line 197
    iput-object p1, p0, Lcom/roblox/client/game/ActivityGame$1;->a:Lcom/roblox/client/game/ActivityGame;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onSystemUiVisibilityChange(I)V
    .locals 0

    and-int/lit8 p1, p1, 0x4

    if-nez p1, :cond_0

    .line 201
    iget-object p1, p0, Lcom/roblox/client/game/ActivityGame$1;->a:Lcom/roblox/client/game/ActivityGame;

    invoke-static {p1}, Lcom/roblox/client/game/ActivityGame;->a(Lcom/roblox/client/game/ActivityGame;)V

    :cond_0
    return-void
.end method
