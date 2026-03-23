.class public Lcom/roblox/client/routing/model/RouteModel;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final android_default_action_handler:Ljava/lang/String;

.field public final default_action:Ljava/lang/String;

.field public final default_action_handler:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    iput-object p1, p0, Lcom/roblox/client/routing/model/RouteModel;->default_action:Ljava/lang/String;

    .line 13
    iput-object p2, p0, Lcom/roblox/client/routing/model/RouteModel;->default_action_handler:Ljava/lang/String;

    .line 14
    iput-object p3, p0, Lcom/roblox/client/routing/model/RouteModel;->android_default_action_handler:Ljava/lang/String;

    return-void
.end method
