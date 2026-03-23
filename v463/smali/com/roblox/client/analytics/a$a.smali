.class Lcom/roblox/client/analytics/a$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/roblox/client/analytics/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "a"
.end annotation


# static fields
.field static final a:Lcom/roblox/client/analytics/a;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 27
    new-instance v0, Lcom/roblox/client/analytics/a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/roblox/client/analytics/a;-><init>(Lcom/roblox/client/analytics/a$1;)V

    sput-object v0, Lcom/roblox/client/analytics/a$a;->a:Lcom/roblox/client/analytics/a;

    return-void
.end method
