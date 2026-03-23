.class Lcom/roblox/client/i/d$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/roblox/client/i/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "a"
.end annotation


# static fields
.field static final a:Lcom/roblox/client/i/d;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 42
    new-instance v0, Lcom/roblox/client/i/d;

    invoke-direct {v0}, Lcom/roblox/client/i/d;-><init>()V

    sput-object v0, Lcom/roblox/client/i/d$a;->a:Lcom/roblox/client/i/d;

    return-void
.end method
