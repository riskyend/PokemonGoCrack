.class Lcom/upsight/android/analytics/event/campaign/UpsightCampaignImpressionEvent$UpsightData;
.super Ljava/lang/Object;
.source "UpsightCampaignImpressionEvent.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/upsight/android/analytics/event/campaign/UpsightCampaignImpressionEvent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "UpsightData"
.end annotation


# instance fields
.field adGameId:Ljava/lang/Integer;
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonInclude;
        value = .enum Lcom/fasterxml/jackson/annotation/JsonInclude$Include;->NON_NULL:Lcom/fasterxml/jackson/annotation/JsonInclude$Include;
    .end annotation

    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "ad_game_id"
    .end annotation
.end field

.field adTypeId:Ljava/lang/Integer;
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonInclude;
        value = .enum Lcom/fasterxml/jackson/annotation/JsonInclude$Include;->NON_NULL:Lcom/fasterxml/jackson/annotation/JsonInclude$Include;
    .end annotation

    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "ad_type_id"
    .end annotation
.end field

.field campaignId:Ljava/lang/Integer;
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "campaign_id"
    .end annotation
.end field

.field contentId:Ljava/lang/Integer;
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "content_id"
    .end annotation
.end field

.field contentTypeId:Ljava/lang/Integer;
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonInclude;
        value = .enum Lcom/fasterxml/jackson/annotation/JsonInclude$Include;->NON_NULL:Lcom/fasterxml/jackson/annotation/JsonInclude$Include;
    .end annotation

    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "content_type_id"
    .end annotation
.end field

.field creativeId:Ljava/lang/Integer;
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "creative_id"
    .end annotation
.end field

.field ordinal:Ljava/lang/Integer;
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonInclude;
        value = .enum Lcom/fasterxml/jackson/annotation/JsonInclude$Include;->NON_NULL:Lcom/fasterxml/jackson/annotation/JsonInclude$Include;
    .end annotation

    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "ordinal"
    .end annotation
.end field

.field scope:Ljava/lang/String;
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonInclude;
        value = .enum Lcom/fasterxml/jackson/annotation/JsonInclude$Include;->NON_NULL:Lcom/fasterxml/jackson/annotation/JsonInclude$Include;
    .end annotation

    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "scope"
    .end annotation
.end field

.field streamId:Ljava/lang/String;
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "stream_id"
    .end annotation
.end field

.field streamStartTs:Ljava/lang/String;
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonInclude;
        value = .enum Lcom/fasterxml/jackson/annotation/JsonInclude$Include;->NON_NULL:Lcom/fasterxml/jackson/annotation/JsonInclude$Include;
    .end annotation

    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "stream_start_ts"
    .end annotation
.end field


# direct methods
.method protected constructor <init>()V
    .registers 1

    .prologue
    .line 90
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 92
    return-void
.end method

.method protected constructor <init>(Lcom/upsight/android/analytics/event/campaign/UpsightCampaignImpressionEvent$Builder;)V
    .registers 3
    .param p1, "builder"    # Lcom/upsight/android/analytics/event/campaign/UpsightCampaignImpressionEvent$Builder;

    .prologue
    .line 77
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 78
    # getter for: Lcom/upsight/android/analytics/event/campaign/UpsightCampaignImpressionEvent$Builder;->ordinal:Ljava/lang/Integer;
    invoke-static {p1}, Lcom/upsight/android/analytics/event/campaign/UpsightCampaignImpressionEvent$Builder;->access$000(Lcom/upsight/android/analytics/event/campaign/UpsightCampaignImpressionEvent$Builder;)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/upsight/android/analytics/event/campaign/UpsightCampaignImpressionEvent$UpsightData;->ordinal:Ljava/lang/Integer;

    .line 79
    # getter for: Lcom/upsight/android/analytics/event/campaign/UpsightCampaignImpressionEvent$Builder;->contentTypeId:Ljava/lang/Integer;
    invoke-static {p1}, Lcom/upsight/android/analytics/event/campaign/UpsightCampaignImpressionEvent$Builder;->access$100(Lcom/upsight/android/analytics/event/campaign/UpsightCampaignImpressionEvent$Builder;)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/upsight/android/analytics/event/campaign/UpsightCampaignImpressionEvent$UpsightData;->contentTypeId:Ljava/lang/Integer;

    .line 80
    # getter for: Lcom/upsight/android/analytics/event/campaign/UpsightCampaignImpressionEvent$Builder;->creativeId:Ljava/lang/Integer;
    invoke-static {p1}, Lcom/upsight/android/analytics/event/campaign/UpsightCampaignImpressionEvent$Builder;->access$200(Lcom/upsight/android/analytics/event/campaign/UpsightCampaignImpressionEvent$Builder;)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/upsight/android/analytics/event/campaign/UpsightCampaignImpressionEvent$UpsightData;->creativeId:Ljava/lang/Integer;

    .line 81
    # getter for: Lcom/upsight/android/analytics/event/campaign/UpsightCampaignImpressionEvent$Builder;->campaignId:Ljava/lang/Integer;
    invoke-static {p1}, Lcom/upsight/android/analytics/event/campaign/UpsightCampaignImpressionEvent$Builder;->access$300(Lcom/upsight/android/analytics/event/campaign/UpsightCampaignImpressionEvent$Builder;)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/upsight/android/analytics/event/campaign/UpsightCampaignImpressionEvent$UpsightData;->campaignId:Ljava/lang/Integer;

    .line 82
    # getter for: Lcom/upsight/android/analytics/event/campaign/UpsightCampaignImpressionEvent$Builder;->adTypeId:Ljava/lang/Integer;
    invoke-static {p1}, Lcom/upsight/android/analytics/event/campaign/UpsightCampaignImpressionEvent$Builder;->access$400(Lcom/upsight/android/analytics/event/campaign/UpsightCampaignImpressionEvent$Builder;)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/upsight/android/analytics/event/campaign/UpsightCampaignImpressionEvent$UpsightData;->adTypeId:Ljava/lang/Integer;

    .line 83
    # getter for: Lcom/upsight/android/analytics/event/campaign/UpsightCampaignImpressionEvent$Builder;->streamId:Ljava/lang/String;
    invoke-static {p1}, Lcom/upsight/android/analytics/event/campaign/UpsightCampaignImpressionEvent$Builder;->access$500(Lcom/upsight/android/analytics/event/campaign/UpsightCampaignImpressionEvent$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/upsight/android/analytics/event/campaign/UpsightCampaignImpressionEvent$UpsightData;->streamId:Ljava/lang/String;

    .line 84
    # getter for: Lcom/upsight/android/analytics/event/campaign/UpsightCampaignImpressionEvent$Builder;->adGameId:Ljava/lang/Integer;
    invoke-static {p1}, Lcom/upsight/android/analytics/event/campaign/UpsightCampaignImpressionEvent$Builder;->access$600(Lcom/upsight/android/analytics/event/campaign/UpsightCampaignImpressionEvent$Builder;)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/upsight/android/analytics/event/campaign/UpsightCampaignImpressionEvent$UpsightData;->adGameId:Ljava/lang/Integer;

    .line 85
    # getter for: Lcom/upsight/android/analytics/event/campaign/UpsightCampaignImpressionEvent$Builder;->streamStartTs:Ljava/lang/String;
    invoke-static {p1}, Lcom/upsight/android/analytics/event/campaign/UpsightCampaignImpressionEvent$Builder;->access$700(Lcom/upsight/android/analytics/event/campaign/UpsightCampaignImpressionEvent$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/upsight/android/analytics/event/campaign/UpsightCampaignImpressionEvent$UpsightData;->streamStartTs:Ljava/lang/String;

    .line 86
    # getter for: Lcom/upsight/android/analytics/event/campaign/UpsightCampaignImpressionEvent$Builder;->scope:Ljava/lang/String;
    invoke-static {p1}, Lcom/upsight/android/analytics/event/campaign/UpsightCampaignImpressionEvent$Builder;->access$800(Lcom/upsight/android/analytics/event/campaign/UpsightCampaignImpressionEvent$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/upsight/android/analytics/event/campaign/UpsightCampaignImpressionEvent$UpsightData;->scope:Ljava/lang/String;

    .line 87
    # getter for: Lcom/upsight/android/analytics/event/campaign/UpsightCampaignImpressionEvent$Builder;->contentId:Ljava/lang/Integer;
    invoke-static {p1}, Lcom/upsight/android/analytics/event/campaign/UpsightCampaignImpressionEvent$Builder;->access$900(Lcom/upsight/android/analytics/event/campaign/UpsightCampaignImpressionEvent$Builder;)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/upsight/android/analytics/event/campaign/UpsightCampaignImpressionEvent$UpsightData;->contentId:Ljava/lang/Integer;

    .line 88
    return-void
.end method


# virtual methods
.method public getAdGameId()Ljava/lang/Integer;
    .registers 2

    .prologue
    .line 140
    iget-object v0, p0, Lcom/upsight/android/analytics/event/campaign/UpsightCampaignImpressionEvent$UpsightData;->adGameId:Ljava/lang/Integer;

    return-object v0
.end method

.method public getAdTypeId()Ljava/lang/Integer;
    .registers 2

    .prologue
    .line 126
    iget-object v0, p0, Lcom/upsight/android/analytics/event/campaign/UpsightCampaignImpressionEvent$UpsightData;->adTypeId:Ljava/lang/Integer;

    return-object v0
.end method

.method public getCampaignId()Ljava/lang/Integer;
    .registers 2

    .prologue
    .line 119
    iget-object v0, p0, Lcom/upsight/android/analytics/event/campaign/UpsightCampaignImpressionEvent$UpsightData;->campaignId:Ljava/lang/Integer;

    return-object v0
.end method

.method public getContentId()Ljava/lang/Integer;
    .registers 2

    .prologue
    .line 161
    iget-object v0, p0, Lcom/upsight/android/analytics/event/campaign/UpsightCampaignImpressionEvent$UpsightData;->contentId:Ljava/lang/Integer;

    return-object v0
.end method

.method public getContentTypeId()Ljava/lang/Integer;
    .registers 2

    .prologue
    .line 105
    iget-object v0, p0, Lcom/upsight/android/analytics/event/campaign/UpsightCampaignImpressionEvent$UpsightData;->contentTypeId:Ljava/lang/Integer;

    return-object v0
.end method

.method public getCreativeId()Ljava/lang/Integer;
    .registers 2

    .prologue
    .line 112
    iget-object v0, p0, Lcom/upsight/android/analytics/event/campaign/UpsightCampaignImpressionEvent$UpsightData;->creativeId:Ljava/lang/Integer;

    return-object v0
.end method

.method public getOrdinal()Ljava/lang/Integer;
    .registers 2

    .prologue
    .line 98
    iget-object v0, p0, Lcom/upsight/android/analytics/event/campaign/UpsightCampaignImpressionEvent$UpsightData;->ordinal:Ljava/lang/Integer;

    return-object v0
.end method

.method public getScope()Ljava/lang/String;
    .registers 2

    .prologue
    .line 154
    iget-object v0, p0, Lcom/upsight/android/analytics/event/campaign/UpsightCampaignImpressionEvent$UpsightData;->scope:Ljava/lang/String;

    return-object v0
.end method

.method public getStreamId()Ljava/lang/String;
    .registers 2

    .prologue
    .line 133
    iget-object v0, p0, Lcom/upsight/android/analytics/event/campaign/UpsightCampaignImpressionEvent$UpsightData;->streamId:Ljava/lang/String;

    return-object v0
.end method

.method public getStreamStartTs()Ljava/lang/String;
    .registers 2

    .prologue
    .line 147
    iget-object v0, p0, Lcom/upsight/android/analytics/event/campaign/UpsightCampaignImpressionEvent$UpsightData;->streamStartTs:Ljava/lang/String;

    return-object v0
.end method
