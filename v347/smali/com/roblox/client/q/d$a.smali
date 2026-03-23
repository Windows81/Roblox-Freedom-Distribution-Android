.class Lcom/roblox/client/q/d$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/roblox/client/q/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "a"
.end annotation


# static fields
.field public static final a:Lcom/roblox/client/q/d;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 17
    new-instance v0, Lcom/roblox/client/q/d;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/roblox/client/q/d;-><init>(Lcom/roblox/client/q/d$1;)V

    sput-object v0, Lcom/roblox/client/q/d$a;->a:Lcom/roblox/client/q/d;

    return-void
.end method
