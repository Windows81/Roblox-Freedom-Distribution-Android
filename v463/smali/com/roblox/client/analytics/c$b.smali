.class Lcom/roblox/client/analytics/c$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/roblox/client/analytics/c$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/roblox/client/analytics/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "b"
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 82
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;Ljava/lang/String;Lcom/roblox/client/http/m;Ljava/lang/String;)Lcom/roblox/client/http/r;
    .locals 1

    .line 87
    new-instance v0, Lcom/roblox/client/http/r;

    invoke-direct {v0, p1, p2, p3, p4}, Lcom/roblox/client/http/r;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/roblox/client/http/m;Ljava/lang/String;)V

    return-object v0
.end method
