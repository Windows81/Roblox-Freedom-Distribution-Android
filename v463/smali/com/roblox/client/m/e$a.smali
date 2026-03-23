.class public Lcom/roblox/client/m/e$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/roblox/client/m/e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 740
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Lcom/roblox/client/m/e;
    .locals 1

    .line 745
    new-instance v0, Lcom/roblox/client/m/a/a;

    invoke-direct {v0}, Lcom/roblox/client/m/a/a;-><init>()V

    return-object v0
.end method
