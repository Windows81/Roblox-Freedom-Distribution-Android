.class Lcom/roblox/client/game/f$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/roblox/client/game/b$g;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/roblox/client/game/f;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lcom/roblox/client/game/f;

.field private final b:J


# direct methods
.method public constructor <init>(Lcom/roblox/client/game/f;J)V
    .locals 0

    .line 266
    iput-object p1, p0, Lcom/roblox/client/game/f$a;->a:Lcom/roblox/client/game/f;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 267
    iput-wide p2, p0, Lcom/roblox/client/game/f$a;->b:J

    return-void
.end method


# virtual methods
.method public a(I)V
    .locals 2

    .line 274
    iget-wide v0, p0, Lcom/roblox/client/game/f$a;->b:J

    const-string p1, "SessionReporterState_GameLoadStart"

    invoke-static {p1, v0, v1}, Lcom/roblox/client/w/a;->a(Ljava/lang/String;J)V

    .line 276
    iget-object p1, p0, Lcom/roblox/client/game/f$a;->a:Lcom/roblox/client/game/f;

    invoke-static {p1}, Lcom/roblox/client/game/f;->a(Lcom/roblox/client/game/f;)Landroid/view/SurfaceView;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/SurfaceView;->setVisibility(I)V

    .line 277
    iget-object p1, p0, Lcom/roblox/client/game/f$a;->a:Lcom/roblox/client/game/f;

    invoke-static {p1}, Lcom/roblox/client/game/f;->b(Lcom/roblox/client/game/f;)Landroid/widget/FrameLayout;

    move-result-object p1

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/widget/FrameLayout;->setVisibility(I)V

    return-void
.end method
