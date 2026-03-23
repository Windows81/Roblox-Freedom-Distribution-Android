.class Lcom/roblox/client/ActivityNativeMain$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/roblox/client/game/b$g;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/roblox/client/ActivityNativeMain;->b(Lcom/roblox/client/feature/FeatureState;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/roblox/client/feature/FeatureState;

.field final synthetic b:Lcom/roblox/client/ActivityNativeMain;


# direct methods
.method constructor <init>(Lcom/roblox/client/ActivityNativeMain;Lcom/roblox/client/feature/FeatureState;)V
    .locals 0

    .line 566
    iput-object p1, p0, Lcom/roblox/client/ActivityNativeMain$1;->b:Lcom/roblox/client/ActivityNativeMain;

    iput-object p2, p0, Lcom/roblox/client/ActivityNativeMain$1;->a:Lcom/roblox/client/feature/FeatureState;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(I)V
    .locals 1

    if-nez p1, :cond_0

    .line 572
    iget-object p1, p0, Lcom/roblox/client/ActivityNativeMain$1;->b:Lcom/roblox/client/ActivityNativeMain;

    invoke-static {p1}, Lcom/roblox/client/game/e;->a(Landroid/content/Context;)Lcom/roblox/client/game/b$a;

    move-result-object p1

    .line 573
    invoke-static {}, Lcom/roblox/client/game/b;->a()Lcom/roblox/client/game/b;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/roblox/client/game/b;->a(Lcom/roblox/client/game/b$a;)V

    .line 575
    :cond_0
    iget-object p1, p0, Lcom/roblox/client/ActivityNativeMain$1;->b:Lcom/roblox/client/ActivityNativeMain;

    iget-object v0, p0, Lcom/roblox/client/ActivityNativeMain$1;->a:Lcom/roblox/client/feature/FeatureState;

    invoke-virtual {p1, v0}, Lcom/roblox/client/ActivityNativeMain;->a(Lcom/roblox/client/feature/FeatureState;)V

    return-void
.end method
