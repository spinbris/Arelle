COMMENT ON COLUMN arcrole_type.arcrole_type_id is 'Object ID of arcrole type definition (within a schema document)';
COMMENT ON COLUMN arcrole_type.arcrole_uri is 'Arcrole URI for this arcrole type definition.';
COMMENT ON COLUMN arcrole_type.cycles_allowed is 'Arcrole definition cycles allowed (any, undirected or none)';
COMMENT ON COLUMN arcrole_type.definition is 'Arcrole type definition string value (human-readable meaning)';
COMMENT ON COLUMN arcrole_type.document_id is 'Object ID of schema document defining this arcrole type';
COMMENT ON COLUMN arcrole_type.xml_id is 'XML element scheme ID of source XML element (ID, ID/1/2/3 or /1/2/3 notation)';
COMMENT ON COLUMN aspect.abstract is 'True if the aspect (or any XML element) is defined as abstract (can not have data point or typed dimension value).';
COMMENT ON COLUMN aspect.aspect_id is 'Object ID of aspect definition (an abstract model class, usually corresponds to a XBRL concept or other element definition). May have instances of values (such as datapoints or aspect value selection typed values) if not abstract.';
COMMENT ON COLUMN aspect.balance is 'Balance type of the aspect (concept element). (debit, credit, or null)';
COMMENT ON COLUMN aspect.base_type is 'Nice version of aspect (element) type, e.g., Table, Axis, typename without ItemType, or custom name, such as String or Monetary';
COMMENT ON COLUMN aspect.datatype_id is 'Object ID of type definition of an aspect (e.g., concept element type definition)';
COMMENT ON COLUMN aspect.document_id is 'Object ID of schema document defining this aspect (e.g., concept element)';
COMMENT ON COLUMN aspect.is_monetary is 'True if the aspect (concept element) is defined as a monetary item type.';
COMMENT ON COLUMN aspect.is_numeric is 'True if the aspect (concept element) is defined as a numeric data type.';
COMMENT ON COLUMN aspect.is_text_block is 'True if the aspect (cencept element) is defined as a text block data type.';
COMMENT ON COLUMN aspect.name is 'Local name of the aspect definition (such as a concept element or typed dimension element)';
COMMENT ON COLUMN aspect.nillable is 'True if the aspect (concept element) can have a nil value.';
COMMENT ON COLUMN aspect.period_type is 'The period type of the aspect. May be instant (values are reported at a point in time) or duration (values are reported over a period of time).';
COMMENT ON COLUMN aspect.qname is 'QName of the aspect definition (Clark notation, e.g., ''{namespaceURI}localName'')';
COMMENT ON COLUMN aspect.substitution_group_aspect_id is 'An aspect declaration substitution group reference to another aspect';
COMMENT ON COLUMN aspect.xml_id is 'XML element scheme ID of the source XML element (ID, ID/1/2/3 or /1/2/3 notation)';
COMMENT ON COLUMN aspect_value_selection.aspect_id is 'Object ID of the aspect defining an aspect value selection (corresponds to XBRL dimension element)';
COMMENT ON COLUMN aspect_value_selection.aspect_value_id is 'Object ID of the aspect defining enumerative value selected (corresponds to XBRL domain or member element)';
COMMENT ON COLUMN aspect_value_selection.aspect_value_selection_id is 'Object ID shared by a datapoint''s aspect_value_selection_set and its aspect_value_selections, and aspect_value_selection_set';
COMMENT ON COLUMN aspect_value_selection.is_typed_value is 'True if the aspect value selection is a typed value (and then string value of typed member is provided) or false if an enumerated aspect selection (corresponding to an XBRL explicit dimension).';
COMMENT ON COLUMN aspect_value_selection.typed_value is 'String value of typed dimension member (inner text of the dimension element)';
COMMENT ON COLUMN aspect_value_selection_set.aspect_value_selection_id is 'Object ID shared by a datapoint''s aspect_value_selection_set and its aspect_value_selections. (Note that aspect_values may be shared by multiple aspect_value_selection_sets of multiple data_points in possibly multiple reports)';
COMMENT ON COLUMN aspect_value_selection_set.report_id is 'Object ID of a report owning a set of aspect value selections';
COMMENT ON COLUMN data_point.aspect_id is 'Object ID of the aspect defining the data point (corresponds to XBRL concept element for the fact)';
COMMENT ON COLUMN data_point.aspect_value_selections_id is 'Object ID shared by a datapoint''s aspect_value_selection_set and its aspect_value_selections (corresponds to XBRL non-defaulted dimensions)';
COMMENT ON COLUMN data_point.context_xml_id is 'XML element scheme ID of context XML element (almost always an ID, may be a very long id giving filer''s meaning to context)';
COMMENT ON COLUMN data_point.datapoint_id is 'Object ID of the datapoint';
COMMENT ON COLUMN data_point.decimals_value is 'Data point precision expressed as rounded significant decimals digits (e.g., 2 = round at hundreths, -3 = round at thousands)';
COMMENT ON COLUMN data_point.document_id is 'Object ID of the instance or inline XBRL document containing this data point';
COMMENT ON COLUMN data_point.effective_value is 'The value of the financial reporting fact. May be a number or text.';
COMMENT ON COLUMN data_point.entity_id is 'Object ID of the entity aspect value of a data point';
COMMENT ON COLUMN data_point.is_nil is 'True if the value of the financial reporting fact is nil.';
COMMENT ON COLUMN data_point.parent_datapoint_id is 'For structured data points, the datapoint_id of parent (corresponds to XBRL tuple containing this fact).';
COMMENT ON COLUMN data_point.period_id is 'Object ID of the period aspect value for datapoints that have period';
COMMENT ON COLUMN data_point.precision_value is 'Precision if reported for a fact (number of significant digits or INF, corresponds to significant digits in scientific number format, e.g., 3 for pi=3.14E0)';
COMMENT ON COLUMN data_point.report_id is 'Object ID of a report owning this data point';
COMMENT ON COLUMN data_point.source_line is 'Line number in instance document or inline HTML file containing this data point';
COMMENT ON COLUMN data_point.unit_id is 'Object ID of the unit aspect for data points that represent numeric facts';
COMMENT ON COLUMN data_point.value is 'String value of the data point that is a fact item';
COMMENT ON COLUMN data_point.xml_id is 'XML element scheme ID of source XML element (ID, ID/1/2/3 or /1/2/3 notation in instance document or instance XML element derived from inline HTML)';
COMMENT ON COLUMN data_type.base_type is 'Base schema type that this type is derived from (such as string or decimal), with these special cases for xbrli definitions: XBRLI_DATEUNION, XBRLI_DECIMALSUNION, XBRLI_PRECISIONUNION, and XBRLI_NONZERODECIMAL.';
COMMENT ON COLUMN data_type.data_type_id is 'Object ID of the data type';
COMMENT ON COLUMN data_type.derived_from_type_id is 'The data type that this data type is derived from (parent of data type if any)';
COMMENT ON COLUMN data_type.document_id is 'Object ID of the schema document defining this data type';
COMMENT ON COLUMN data_type.name is 'Local name of the type definition';
COMMENT ON COLUMN data_type.qname is 'QName of the type definition (Clark notation, e.g., ''{namespaceURI}localName'')';
COMMENT ON COLUMN data_type.xml_id is 'XML element scheme ID of the source XML element (ID, ID/1/2/3 or /1/2/3 notation)';
COMMENT ON COLUMN document.document_id is 'Object ID of the document';
COMMENT ON COLUMN document.document_type is 'Selection of: ''schema'', ''linkbase'', ''instance'', ''inline XBRL document set'', ''versioning report'', ''unknown XML'', ''unknown non-XML''';
COMMENT ON COLUMN document.document_url is 'Document URL (may be a website URL, or if loaded from within a web-resident archive file, then the URL of the archive file concatenated to path within the archive file)';
COMMENT ON COLUMN document.namespace is 'Target namespace URI of a document for a schema document, else null.';
COMMENT ON COLUMN entity.entity_id is 'Object ID of the entity aspect value of a data point';
COMMENT ON COLUMN entity.entity_identifier is 'Data point entity aspect value (identifier string value)';
COMMENT ON COLUMN entity.entity_scheme is 'Data point entity aspect value (schema attribute URI value)';
COMMENT ON COLUMN entity.report_id is 'Object ID of the report owning this entity aspect value';
COMMENT ON COLUMN filing.accepted_timestamp is 'Date and time the filing was accepted by the regulatory authority (if SEC, from RSS feed).';
COMMENT ON COLUMN filing.authority_html_url is 'Entry point document URL of a filing (usually the XBRL instance document URL) (useful to paste into Arelle to open up the instance)';
COMMENT ON COLUMN filing.creation_software is 'The software used to create the filing. This information is determined by reading comments in the xbrl instance file from the filing. (see Arelle config/creationSoftwareNames.json)';
COMMENT ON COLUMN filing.entity_id is 'Authority code for an entity filing a submission (e.g., SEC CIK code or DPM LEI code)';
COMMENT ON COLUMN filing.entity_name is 'The name of the filer submitting the filing to the regulatory authority.';
COMMENT ON COLUMN filing.entry_url is 'A filing''s primary instance document URL, when publicly available. (From RSS feed, may not be the same as the entry document document_url, which could be within an archive file).';
COMMENT ON COLUMN filing.filing_date is 'The date the filing was accepted by the regulatory authority.';
COMMENT ON COLUMN filing.filing_id is 'Sequence number in database of the filing';
COMMENT ON COLUMN filing.filing_number is 'Filing number, for SEC the accession number of a filing, for DPM may be authority assigned';
COMMENT ON COLUMN filing.form_type is 'Filing indicator (of entire filing), for SEC the form (10-K, 20-F), for DPM may be the framework model.';
COMMENT ON COLUMN filing.is_most_current is 'Provided for compatibility with XBRL-US public database. Always true in current implementation.';
COMMENT ON COLUMN filing.reference_number is 'For SEC filings, the file number (used to cross-reference correspondence and other filings of same filing entity)';
COMMENT ON COLUMN filing.standard_industry_code is 'Standard industrial classification code provided with the filing when submitted to the regulatory authority';
COMMENT ON COLUMN industry.depth is 'Industry codes table from XBRL-US, depth in tree structure';
COMMENT ON COLUMN industry.industry_classification is 'Industry codes table from XBRL-US, industry code';
COMMENT ON COLUMN industry.industry_code is 'Industry codes table from XBRL-US, SIC code';
COMMENT ON COLUMN industry.industry_description is 'Industry codes table from XBRL-US, description';
COMMENT ON COLUMN industry.industry_id is 'Industry codes table from XBRL-US, SIC code';
COMMENT ON COLUMN industry.parent_id is 'Industry codes table from XBRL-US, parent in tree structure';
COMMENT ON COLUMN industry_level.ancestor_code is 'Industry codes table from XBRL-US, parent in tree structure';
COMMENT ON COLUMN industry_level.ancestor_depth is 'Industry codes table from XBRL-US, depth in tree structure';
COMMENT ON COLUMN industry_level.ancestor_id is 'Industry codes table from XBRL-US, parent''s id';
COMMENT ON COLUMN industry_level.descendant_code is 'Industry codes table from XBRL-US, depth in tree structure';
COMMENT ON COLUMN industry_level.descendant_depth is 'Industry codes table from XBRL-US, depth in tree structure';
COMMENT ON COLUMN industry_level.descendant_id is 'Industry codes table from XBRL-US, descendant in tree structure';
COMMENT ON COLUMN industry_level.industry_classification is 'Industry codes table from XBRL-US, dept in tree structure';
COMMENT ON COLUMN industry_level.industry_level_id is 'Industry codes table from XBRL-US, depth in tree structure';
COMMENT ON COLUMN industry_structure.depth is 'Industry codes table from XBRL-US, depth in tree structure';
COMMENT ON COLUMN industry_structure.industry_classification is 'Industry codes table from XBRL-US, structure code';
COMMENT ON COLUMN industry_structure.industry_structure_id is 'Industry codes table from XBRL-US, structure';
COMMENT ON COLUMN industry_structure.level_name is 'Industry codes table from XBRL-US, structure';
COMMENT ON COLUMN message.message_code is 'Message code reported by message, such as XBRL-assigned qname or EFM paragraph section';
COMMENT ON COLUMN message.message_id is 'Database sequence ID of this message';
COMMENT ON COLUMN message.message_level is 'Severity level of a message (WARNING, INCONSISTENCY, ERROR, or for SEC also WARNING-SEMANTIC and ERROR-SEMANTIC)';
COMMENT ON COLUMN message.report_id is 'Object ID of the report that this message pertains to (message refers to objects noted in validating this report)';
COMMENT ON COLUMN message.sequence_in_report is 'Sequence of message when detected in validation of this report';
COMMENT ON COLUMN message.value is 'String message text of the message as reported by logging system';
COMMENT ON COLUMN message_reference.message_id is 'Database sequence ID of the message that this reference is for';
COMMENT ON COLUMN message_reference.object_id is 'Object ID for a referenced object of the message (e.g., datapoint_id, aspect_id, relationship_id)';
COMMENT ON COLUMN period.end_date is 'The ending date of a duration period type or the instant date of an instant period type. If the date was reported without time, this is the date after the reported date, e.g. a period Jan 1 - Dec 31, the Dec 31 ending date is at 24:00 hrs, so the end date value is Jan 1 00 hrs. (Per XBRL-US database convention.) Null for a forever period.';
COMMENT ON COLUMN period.is_forever is 'True if a period is a forever period. (Start_date and end_date are null in this case.)';
COMMENT ON COLUMN period.is_instant is 'True if a period is an instant period. (The instant date is in the end_date column, see note under end_date about 24:00 hrs issue.)';
COMMENT ON COLUMN period.period_id is 'Object ID of the period aspect value';
COMMENT ON COLUMN period.report_id is 'Object ID of the report owning this period aspect value';
COMMENT ON COLUMN period.start_date is 'The starting date of a duration period type. (Null for an instant or forever period.)';
COMMENT ON COLUMN referenced_documents.document_id is 'Object ID of the target document of this reference';
COMMENT ON COLUMN referenced_documents.object_id is 'Object ID of the source of a document reference (e.g., filing, document)';
COMMENT ON COLUMN relationship.calculation_weight is 'Weight the calculation relationship (e.g., 1, -1, or null)';
COMMENT ON COLUMN relationship.document_id is 'Object ID of the document containing the arc of this relationship (e.g., linkbase, instance or inline XBRL defining a footnote arc)';
COMMENT ON COLUMN relationship.from_id is 'Object ID of the source of the relationship (e.g., aspect for a concept source, resource for a table or formula linkbase, or datapoint for a footnote)';
COMMENT ON COLUMN relationship.preferred_label_role is 'Label URI role on a presentation relationship or generic-preferred role if used';
COMMENT ON COLUMN relationship.relationship_id is 'Object ID of a relationship';
COMMENT ON COLUMN relationship.relationship_set_id is 'Object ID of a relationship set';
COMMENT ON COLUMN relationship.reln_order is 'Order attribute of a relationship (within it''s relationship set)';
COMMENT ON COLUMN relationship.to_id is 'Object ID of the target of the relationship (e.g., aspect for a concept target, resource for a label, or fact for a fact-explanatory-fact footnote)';
COMMENT ON COLUMN relationship.tree_depth is 'Depth in relationship tree (1 is top)';
COMMENT ON COLUMN relationship.tree_sequence is 'Sequence from start of relationship in depth first tree walk';
COMMENT ON COLUMN relationship.xml_id is 'XML element scheme ID of source XML element (ID, ID/1/2/3 or /1/2/3 notation)';
COMMENT ON COLUMN relationship_set.arc_qname is 'Relationship set''s arc element QName (Clark notation)';
COMMENT ON COLUMN relationship_set.arc_role is 'Relationship set''s arc element arcrole URIs';
COMMENT ON COLUMN relationship_set.document_id is 'For instance (footnote) relationships the object ID of the instance document or first inline XBRL document, for DTS relationships, the object ID of the outermost discovery document bearing linkbases, e.g., for an SEC extension taxonomy the instance document, but for a DPM instance, the highest referenced document under which linkbases are defined (e.g., the DPM framework model document).';
COMMENT ON COLUMN relationship_set.link_qname is 'Relationship set''s extended link element QName (Clark notation)';
COMMENT ON COLUMN relationship_set.link_role is 'Relationship set''s link role URI';
COMMENT ON COLUMN relationship_set.relationship_set_id is 'Object ID of a relationship set';
COMMENT ON COLUMN report.filing_id is 'Sequence number in database of the filing';
COMMENT ON COLUMN report.report_id is 'Object ID of the report';
COMMENT ON COLUMN resource.document_id is 'Object ID of the document bearing this resource (for footnote, an instance or inline HTML document, for DTS resource, a linkbase document or schema document embedding a linkbase)';
COMMENT ON COLUMN resource.qname is 'QName of the resource element (Clark notation)';
COMMENT ON COLUMN resource.resource_id is 'Object ID of the resource';
COMMENT ON COLUMN resource.role is 'Role URI of the resource';
COMMENT ON COLUMN resource.value is 'String value of resource (e.g., a label or footnote)';
COMMENT ON COLUMN resource.xml_id is 'XML element scheme ID of the source XML element (ID, ID/1/2/3 or /1/2/3 notation)';
COMMENT ON COLUMN resource.xml_lang is 'xml:lang attribute of resource';
COMMENT ON COLUMN role_type.definition is 'Role type definition string value (human-readable meaning)';
COMMENT ON COLUMN role_type.document_id is 'Object ID of the schema document defining the role type';
COMMENT ON COLUMN role_type.role_type_id is 'Object ID of the role type definition';
COMMENT ON COLUMN role_type.role_uri is 'Role URI of the role type definition';
COMMENT ON COLUMN role_type.xml_id is 'XML element scheme ID of the source XML element (ID, ID/1/2/3 or /1/2/3 notation)';
COMMENT ON COLUMN root.relationship_id is 'Object ID of a relationship that is a root in a tree structure';
COMMENT ON COLUMN root.relationship_set_id is 'Object ID of a relationship set';
COMMENT ON COLUMN table_data_points.datapoint_id is 'Object ID of the datapoint that is in this table of data points';
COMMENT ON COLUMN table_data_points.object_id is 'Object ID of a table owner (e.g., a role type definition for SEC, a table aspect for DPM)';
COMMENT ON COLUMN table_data_points.report_id is 'Object ID of the report owning data points of this table';
COMMENT ON COLUMN table_data_points.table_code is 'A table code (financial statement face code, such as BS, IS, or table filing indicator code for DPM, such as 20.5a)';
COMMENT ON COLUMN unit.measures_hash is 'A hash code of the measures of this unit, for quick comparison of units that have same-valued measures';
COMMENT ON COLUMN unit.report_id is 'Object ID of the report owning unit aspect value';
COMMENT ON COLUMN unit.unit_id is 'Object ID of the unit';
COMMENT ON COLUMN unit.xml_id is 'XML element schema ID of the source XML element (ID, ID/1/2/3 or /1/2/3 notation)';
COMMENT ON COLUMN unit_measure.is_multiplicand is 'True if the unit measure is a multiplicand, false if a divisor measure.';
COMMENT ON COLUMN unit_measure.qname is 'QName of the measure (Clark notation)';
COMMENT ON COLUMN unit_measure.unit_id is 'Object ID of the unit having this measure';
COMMENT ON COLUMN used_on.aspect_id is 'Object ID of the aspect (corresponds to XML element) that role/arcrole type can be used on.';
COMMENT ON COLUMN used_on.object_id is 'Object ID of the used on owner (e.g., role_type_id, arc_role_type_id)';