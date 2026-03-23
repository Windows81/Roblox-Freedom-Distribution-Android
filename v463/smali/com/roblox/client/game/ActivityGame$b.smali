.class Lcom/roblox/client/game/ActivityGame$b;
.super Lcom/roblox/client/game/p;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/roblox/client/game/ActivityGame;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "b"
.end annotation


# instance fields
.field final synthetic a:Lcom/roblox/client/game/ActivityGame;


# direct methods
.method private constructor <init>(Lcom/roblox/client/game/ActivityGame;)V
    .locals 0

    .line 715
    iput-object p1, p0, Lcom/roblox/client/game/ActivityGame$b;->a:Lcom/roblox/client/game/ActivityGame;

    invoke-direct {p0}, Lcom/roblox/client/game/p;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/roblox/client/game/ActivityGame;Lcom/roblox/client/game/ActivityGame$1;)V
    .locals 0

    .line 715
    invoke-direct {p0, p1}, Lcom/roblox/client/game/ActivityGame$b;-><init>(Lcom/roblox/client/game/ActivityGame;)V

    return-void
.end method


# virtual methods
.method public a(I)V
    .locals 2

    .line 718
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setting orientation: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "rbx.game"

    invoke-static {v1, v0}, Lcom/roblox/client/ae/k;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 719
    iget-object v0, p0, Lcom/roblox/client/game/ActivityGame$b;->a:Lcom/roblox/client/game/ActivityGame;

    invoke-virtual {v0, p1}, Lcom/roblox/client/game/ActivityGame;->setRequestedOrientation(I)V

    return-void
.end method
