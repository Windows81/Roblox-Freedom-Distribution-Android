.class Lcom/roblox/client/realtime/e$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/roblox/client/realtime/e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "a"
.end annotation


# static fields
.field public static final a:Lcom/roblox/client/realtime/e;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 18
    new-instance v0, Lcom/roblox/client/realtime/e;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/roblox/client/realtime/e;-><init>(Lcom/roblox/client/realtime/e$1;)V

    sput-object v0, Lcom/roblox/client/realtime/e$a;->a:Lcom/roblox/client/realtime/e;

    return-void
.end method
