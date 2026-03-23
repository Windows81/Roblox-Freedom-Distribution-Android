.class Lcom/roblox/client/i/c$c;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/roblox/client/i/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "c"
.end annotation


# static fields
.field static final a:Lcom/roblox/client/i/c;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 111
    new-instance v0, Lcom/roblox/client/i/c;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/roblox/client/i/c;-><init>(Lcom/roblox/client/i/c$1;)V

    sput-object v0, Lcom/roblox/client/i/c$c;->a:Lcom/roblox/client/i/c;

    return-void
.end method
