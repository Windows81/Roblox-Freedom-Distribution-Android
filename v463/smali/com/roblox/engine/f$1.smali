.class final Lcom/roblox/engine/f$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/roblox/engine/f$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/roblox/engine/f;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Lcom/roblox/engine/f;
    .locals 2

    const-string v0, "rbx.xapkmanager"

    const-string v1, "default XAPKManager created"

    .line 35
    invoke-static {v0, v1}, Lcom/roblox/platform/e;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 36
    new-instance v0, Lcom/roblox/engine/f;

    invoke-direct {v0}, Lcom/roblox/engine/f;-><init>()V

    return-object v0
.end method
