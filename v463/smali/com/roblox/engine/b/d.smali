.class public Lcom/roblox/engine/b/d;
.super Lcom/roblox/engine/b/c;
.source "SourceFile"


# instance fields
.field public a:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 3

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const-string v1, "{\"appName\":\"%s\"}"

    .line 23
    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "Navigations"

    const-string v2, "Destination"

    .line 22
    invoke-direct {p0, v1, v0, v2}, Lcom/roblox/engine/b/c;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 25
    iput-object p1, p0, Lcom/roblox/engine/b/d;->a:Ljava/lang/String;

    return-void
.end method
