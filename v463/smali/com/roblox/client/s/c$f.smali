.class public Lcom/roblox/client/s/c$f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/roblox/engine/f$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/roblox/client/s/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "f"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 553
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Lcom/roblox/engine/f;
    .locals 1

    .line 556
    new-instance v0, Lcom/roblox/client/s/c$f$1;

    invoke-direct {v0, p0}, Lcom/roblox/client/s/c$f$1;-><init>(Lcom/roblox/client/s/c$f;)V

    return-object v0
.end method
